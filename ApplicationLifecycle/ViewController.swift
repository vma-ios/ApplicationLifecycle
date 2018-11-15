//
//  ViewController.swift
//  ApplicationLifecycle
//
//  Created by Lubos Ilcik on 21/11/2017.
//  Copyright © 2017 Touch4It. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(onDidBecomeActiveNotification), name: UIApplication.didBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(onDidEnterBackgroundNotification), name: UIApplication.didEnterBackgroundNotification, object: nil)
    }

    @objc func onDidEnterBackgroundNotification() {
        print("didEnterBackgroundNotification")
    }
    
    @objc func onDidBecomeActiveNotification() {
        print("didBecomeActiveNotification")
    }
}


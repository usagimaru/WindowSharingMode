//
//  AppDelegate.swift
//  WindowSharingMode
//
//  Created by usagimaru on 2021/03/26.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

	func applicationDidFinishLaunching(_ aNotification: Notification) {
		let deniedWindowController = NSStoryboard(name: "Main", bundle: nil).instantiateController(withIdentifier: "DeniedWindowController") as! NSWindowController
		deniedWindowController.showWindow(nil)
		
		// スクリーンショット等では見せられないよ！
		deniedWindowController.window?.sharingType = .none
	}

}


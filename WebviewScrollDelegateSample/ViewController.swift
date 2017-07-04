//
//  ViewController.swift
//  WebviewScrollDelegateSample
//
//  Created by 住田祐樹 on 2017/07/04.
//  Copyright © 2017年 Yuki Sumida. All rights reserved.
//
import UIKit
import WebKit

class ViewController: UIViewController, UIWebViewDelegate, WKNavigationDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let webView: WKWebView = WKWebView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        webView.navigationDelegate = self
        webView.scrollView.delegate = self

        webView.load(URLRequest(url: URL(string: "https://www.yahoo.co.jp")!))
        
        self.view.addSubview(webView)
    }
}

extension ViewController: UIScrollViewDelegate {
    func scrollViewWillBeginDecelerating(_ scrollView: UIScrollView) {
        print("scrollViewWillBeginDecelerating")
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        print("scrollViewWillBeginDragging")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        print("scrollViewDidEndDragging \(decelerate)")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        print("scrollViewDidEndDecelerating")
    }
}

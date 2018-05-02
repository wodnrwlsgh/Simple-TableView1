//
//  ViewController.swift
//  simple_Tableview01
//
//  Created by D7703_22 on 2018. 5. 2..
//  Copyright © 2018년 jun5250. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    var animals = ["고양이", "원숭이", "강아지", "돼지", "햄스터"]
    var country = ["한국", "태국", "미국", "영국", "아프리카"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    /*func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int {
        return country.count
    }
     */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //cell 메모리의 재활용
        let identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        //cell에 이미지 넣기
        let myImage = UIImage(named:"\(indexPath.row+1).png")
        cell.imageView?.image = myImage
        cell.textLabel?.text = animals[indexPath.row]
        cell.detailTextLabel?.text = country[indexPath.row]
        
        return cell
        
    }
    
}



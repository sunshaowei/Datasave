//
//  ViewController.m
//  cunChu
//
//  Created by kuanter on 16/6/17.
//  Copyright © 2016年 kuanter. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
//本地存储
- (IBAction)saveButton:(id)sender {
    
    NSString*str=@"我们还能不能再见面，我在佛前苦苦求了几千年";
    
 NSString *documentsDirectory = NSHomeDirectory();
NSString *dataPath = [documentsDirectory stringByAppendingPathComponent:@"sun"];
    
    NSData *savedData =[str dataUsingEncoding:NSUTF8StringEncoding];
  [savedData writeToFile:dataPath atomically:YES];
  
}
//本地读取
- (IBAction)readButton:(id)sender {
    NSString *documentsDirectory = NSHomeDirectory();
    NSString *dataPath = [documentsDirectory stringByAppendingPathComponent:@"sun"];
    NSData *savedData=[NSData dataWithContentsOfFile:dataPath];
    NSString*str=[[NSString alloc] initWithData:savedData encoding:NSUTF8StringEncoding];
     NSLog(@"====%s==========%@",__func__,str);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

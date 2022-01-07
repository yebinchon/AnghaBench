
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int printk (char*) ;

__attribute__((used)) static void print_status_details(u16 status)
{
 if (status & 0x0001)
  printk("               busy\n");
 if (status & 0x0002)
  printk("               redirection required\n");
 switch((status & 0x001C) >> 2) {
 case 1:
  printk("               bad version\n");
  break;
 case 2:
  printk("               method not supported\n");
  break;
 case 3:
  printk("               method/attribute combo not supported\n");
  break;
 case 7:
  printk("               invalid attribute/modifier value\n");
  break;
 }
}

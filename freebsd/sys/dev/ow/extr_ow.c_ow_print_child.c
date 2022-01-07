
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_devinfo {int romid; } ;
typedef int device_t ;


 scalar_t__ bus_print_child_footer (int ,int ) ;
 scalar_t__ bus_print_child_header (int ,int ) ;
 struct ow_devinfo* device_get_ivars (int ) ;
 scalar_t__ printf (char*,int *,char*) ;

__attribute__((used)) static int
ow_print_child(device_t ndev, device_t pdev)
{
 int retval = 0;
 struct ow_devinfo *di;

 di = device_get_ivars(pdev);

 retval += bus_print_child_header(ndev, pdev);
 retval += printf(" romid %8D", &di->romid, ":");
 retval += bus_print_child_footer(ndev, pdev);

 return retval;
}

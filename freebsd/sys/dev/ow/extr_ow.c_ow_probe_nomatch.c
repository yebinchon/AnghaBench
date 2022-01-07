
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_devinfo {int romid; } ;
typedef int device_t ;


 struct ow_devinfo* device_get_ivars (int ) ;
 int device_printf (int ,char*,int *,char*) ;

__attribute__((used)) static void
ow_probe_nomatch(device_t ndev, device_t pdev)
{
 struct ow_devinfo *di;

 di = device_get_ivars(pdev);
 device_printf(ndev, "romid %8D: no driver\n", &di->romid, ":");
}

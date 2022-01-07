
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ss_fail ;
typedef int ds_fail ;
typedef int dev ;
typedef int bus ;


 int printf (char*) ;
 int sysctlbyname (char*,int *,int *,int*,int) ;

__attribute__((used)) static void
set_ctrl_ep_fail(int bus, int dev, int ds_fail, int ss_fail)
{
 int error;

 error = sysctlbyname("hw.usb.ctrl_bus_fail", ((void*)0), ((void*)0),
     &bus, sizeof(bus));
 if (error != 0)
  goto emissing;

 error = sysctlbyname("hw.usb.ctrl_dev_fail", ((void*)0), ((void*)0),
     &dev, sizeof(dev));
 if (error != 0)
  goto emissing;

 error = sysctlbyname("hw.usb.ctrl_ds_fail", ((void*)0), ((void*)0),
     &ds_fail, sizeof(ds_fail));
 if (error != 0)
  goto emissing;

 error = sysctlbyname("hw.usb.ctrl_ss_fail", ((void*)0), ((void*)0),
     &ss_fail, sizeof(ss_fail));
 if (error != 0)
  goto emissing;
 return;

emissing:
 printf("Cannot set USB sysctl, missing USB_REQ_DEBUG option?\n");
}

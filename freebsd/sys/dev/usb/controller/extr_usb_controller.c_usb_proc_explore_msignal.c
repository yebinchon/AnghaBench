
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int bus; } ;


 int USB_BUS_EXPLORE_PROC (int ) ;
 void* usb_proc_msignal (int ,void*,void*) ;

void *
usb_proc_explore_msignal(struct usb_device *udev, void *pm1, void *pm2)
{
 return (usb_proc_msignal(USB_BUS_EXPLORE_PROC(udev->bus), pm1, pm2));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int bus; } ;


 int USB_BUS_UNLOCK (int ) ;

void
usb_proc_explore_unlock(struct usb_device *udev)
{
 USB_BUS_UNLOCK(udev->bus);
}

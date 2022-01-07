
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_descriptor {int dummy; } ;
struct usb_device {struct usb_device_descriptor ddesc; } ;



struct usb_device_descriptor *
usbd_get_device_descriptor(struct usb_device *udev)
{
 if (udev == ((void*)0))
  return (((void*)0));
 return (&udev->ddesc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {char const* product; } ;



const char *
usb_get_product(struct usb_device *udev)
{
 return (udev->product ? udev->product : "");
}

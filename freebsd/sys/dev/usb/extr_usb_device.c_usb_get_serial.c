
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {char const* serial; } ;



const char *
usb_get_serial(struct usb_device *udev)
{
 return (udev->serial ? udev->serial : "");
}

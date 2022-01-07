
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {scalar_t__ re_enumerate_wait; int bus; } ;


 scalar_t__ USB_RE_ENUM_DONE ;
 scalar_t__ USB_RE_ENUM_START ;
 int usb_needs_explore (int ,int ) ;

void
usbd_start_re_enumerate(struct usb_device *udev)
{
 if (udev->re_enumerate_wait == USB_RE_ENUM_DONE) {
  udev->re_enumerate_wait = USB_RE_ENUM_START;
  usb_needs_explore(udev->bus, 0);
 }
}

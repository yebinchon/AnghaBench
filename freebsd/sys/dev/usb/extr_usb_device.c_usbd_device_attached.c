
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_device {scalar_t__ state; } ;


 scalar_t__ USB_STATE_DETACHED ;

uint8_t
usbd_device_attached(struct usb_device *udev)
{
 return (udev->state > USB_STATE_DETACHED);
}

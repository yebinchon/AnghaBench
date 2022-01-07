
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_device {scalar_t__ ifaces_max; int * cdesc; } ;


 int USB_ERR_NORMAL_COMPLETION ;
 int USB_ERR_NOT_CONFIGURED ;

usb_error_t
usbd_interface_count(struct usb_device *udev, uint8_t *count)
{
 if (udev->cdesc == ((void*)0)) {
  *count = 0;
  return (USB_ERR_NOT_CONFIGURED);
 }
 *count = udev->ifaces_max;
 return (USB_ERR_NORMAL_COMPLETION);
}

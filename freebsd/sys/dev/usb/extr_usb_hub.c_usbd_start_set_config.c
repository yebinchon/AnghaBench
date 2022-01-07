
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_device {scalar_t__ re_enumerate_wait; scalar_t__ curr_config_index; scalar_t__ next_config_index; int bus; } ;


 int USB_ERR_PENDING_REQUESTS ;
 scalar_t__ USB_RE_ENUM_DONE ;
 scalar_t__ USB_RE_ENUM_SET_CONFIG ;
 int usb_needs_explore (int ,int ) ;

usb_error_t
usbd_start_set_config(struct usb_device *udev, uint8_t index)
{
 if (udev->re_enumerate_wait == USB_RE_ENUM_DONE) {
  if (udev->curr_config_index == index) {

   return (0);
  }
  udev->next_config_index = index;
  udev->re_enumerate_wait = USB_RE_ENUM_SET_CONFIG;
  usb_needs_explore(udev->bus, 0);
  return (0);
 } else if (udev->re_enumerate_wait == USB_RE_ENUM_SET_CONFIG) {
  if (udev->next_config_index == index) {

   return (0);
  }
 }
 return (USB_ERR_PENDING_REQUESTS);
}

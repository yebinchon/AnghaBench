
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int state; } ;
typedef enum usb_dev_state { ____Placeholder_usb_dev_state } usb_dev_state ;


 int USB_STATE_DETACHED ;

enum usb_dev_state
usb_get_device_state(struct usb_device *udev)
{
 if (udev == ((void*)0))
  return (USB_STATE_DETACHED);
 return (udev->state);
}

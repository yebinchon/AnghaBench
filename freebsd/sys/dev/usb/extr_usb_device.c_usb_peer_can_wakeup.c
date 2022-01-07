
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ usb_mode; } ;
struct usb_device {TYPE_1__ flags; struct usb_config_descriptor* cdesc; } ;
struct usb_config_descriptor {int bmAttributes; } ;


 int UC_REMOTE_WAKEUP ;
 scalar_t__ USB_MODE_HOST ;

uint8_t
usb_peer_can_wakeup(struct usb_device *udev)
{
 const struct usb_config_descriptor *cdp;

 cdp = udev->cdesc;
 if ((cdp != ((void*)0)) && (udev->flags.usb_mode == USB_MODE_HOST)) {
  return (cdp->bmAttributes & UC_REMOTE_WAKEUP);
 }
 return (0);
}

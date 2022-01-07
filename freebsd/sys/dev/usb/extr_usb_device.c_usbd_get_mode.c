
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int usb_mode; } ;
struct usb_device {TYPE_1__ flags; } ;
typedef enum usb_hc_mode { ____Placeholder_usb_hc_mode } usb_hc_mode ;



enum usb_hc_mode
usbd_get_mode(struct usb_device *udev)
{
 return (udev->flags.usb_mode);
}

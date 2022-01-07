
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct usb_device {int bus; scalar_t__ power_mode; } ;


 scalar_t__ USB_POWER_MODE_OFF ;
 scalar_t__ USB_POWER_MODE_ON ;
 scalar_t__ USB_POWER_MODE_SAVE ;
 int usb_bus_power_update (int ) ;
 int usb_needs_explore (int ,int ) ;
 scalar_t__ usbd_filter_power_mode (struct usb_device*,scalar_t__) ;

void
usbd_set_power_mode(struct usb_device *udev, uint8_t power_mode)
{

 if ((power_mode != USB_POWER_MODE_ON) &&
     (power_mode != USB_POWER_MODE_OFF))
  power_mode = USB_POWER_MODE_SAVE;

 power_mode = usbd_filter_power_mode(udev, power_mode);

 udev->power_mode = power_mode;




 usb_needs_explore(udev->bus, 0 );

}

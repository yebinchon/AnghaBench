
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usb_error_t ;
typedef scalar_t__ uint8_t ;
struct usb_xfer {TYPE_1__* xroot; } ;
struct TYPE_4__ {int remote_wakeup; } ;
struct usb_device {struct usb_bus* bus; TYPE_2__ flags; } ;
struct usb_bus {int dummy; } ;
struct TYPE_3__ {struct usb_device* udev; } ;


 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 int usb_bus_power_update (struct usb_bus*) ;

__attribute__((used)) static usb_error_t
usb_handle_remote_wakeup(struct usb_xfer *xfer, uint8_t is_on)
{
 struct usb_device *udev;
 struct usb_bus *bus;

 udev = xfer->xroot->udev;
 bus = udev->bus;

 USB_BUS_LOCK(bus);

 if (is_on) {
  udev->flags.remote_wakeup = 1;
 } else {
  udev->flags.remote_wakeup = 0;
 }

 USB_BUS_UNLOCK(bus);





 return (0);
}

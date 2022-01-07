
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_bus {int dummy; } ;


 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (struct usb_bus*,int ) ;
 int usb_needs_explore (struct usb_bus*,int ) ;

void
uhub_root_intr(struct usb_bus *bus, const uint8_t *ptr, uint8_t len)
{
 USB_BUS_LOCK_ASSERT(bus, MA_OWNED);

 usb_needs_explore(bus, 0);
}

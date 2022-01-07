
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct usb_bus {int isoc_time_last; } ;


 int MA_OWNED ;
 int USB_BUS_LOCK_ASSERT (struct usb_bus*,int ) ;
 int USB_ISOC_TIME_MAX ;

uint16_t
usb_isoc_time_expand(struct usb_bus *bus, uint16_t isoc_time_curr)
{
 uint16_t rem;

 USB_BUS_LOCK_ASSERT(bus, MA_OWNED);

 rem = bus->isoc_time_last & (USB_ISOC_TIME_MAX - 1);

 isoc_time_curr &= (USB_ISOC_TIME_MAX - 1);

 if (isoc_time_curr < rem) {

  bus->isoc_time_last += USB_ISOC_TIME_MAX;
 }


 bus->isoc_time_last &= ~(USB_ISOC_TIME_MAX - 1);
 bus->isoc_time_last |= isoc_time_curr;

 return (bus->isoc_time_last);
}

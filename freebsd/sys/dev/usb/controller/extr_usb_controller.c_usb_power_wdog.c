
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int power_wdog; } ;


 int MA_OWNED ;
 int USB_BUS_EXPLORE_PROC (struct usb_bus*) ;
 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_LOCK_ASSERT (struct usb_bus*,int ) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 int hz ;
 int usb_bus_power_update (struct usb_bus*) ;
 int usb_callout_reset (int *,int,void (*) (void*),void*) ;
 int usb_proc_rewakeup (int ) ;

__attribute__((used)) static void
usb_power_wdog(void *arg)
{
 struct usb_bus *bus = arg;

 USB_BUS_LOCK_ASSERT(bus, MA_OWNED);

 usb_callout_reset(&bus->power_wdog,
     4 * hz, usb_power_wdog, arg);
}

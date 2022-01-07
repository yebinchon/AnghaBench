
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int dummy; } ;


 int DPRINTF (char*) ;

__attribute__((used)) static void
octusb_set_hw_power(struct usb_bus *bus)
{
 DPRINTF("Nothing to do.\n");
}

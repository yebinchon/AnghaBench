
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_proc_msg {int dummy; } ;
struct usb_bus_msg {struct usb_bus* bus; } ;
struct usb_bus {scalar_t__ no_explore; int * bdev; } ;


 int DPRINTF (char*) ;
 int usb_bus_resume (struct usb_proc_msg*) ;
 int usb_bus_suspend (struct usb_proc_msg*) ;

__attribute__((used)) static void
usb_bus_reset(struct usb_proc_msg *pm)
{
 struct usb_bus *bus;

 DPRINTF("\n");

 bus = ((struct usb_bus_msg *)pm)->bus;

 if (bus->bdev == ((void*)0) || bus->no_explore != 0)
  return;


 usb_bus_suspend(pm);
 usb_bus_resume(pm);
}

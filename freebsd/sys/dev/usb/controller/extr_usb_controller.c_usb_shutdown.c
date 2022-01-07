
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int bdev; int * shutdown_msg; } ;
typedef int device_t ;


 int DPRINTF (char*,...) ;
 int USB_BUS_EXPLORE_PROC (struct usb_bus*) ;
 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 int device_get_nameunit (int ) ;
 struct usb_bus* device_get_softc (int ) ;
 scalar_t__ usb_no_shutdown_wait ;
 int usb_proc_msignal (int ,int *,int *) ;
 int usb_proc_mwait (int ,int *,int *) ;

__attribute__((used)) static int
usb_shutdown(device_t dev)
{
 struct usb_bus *bus = device_get_softc(dev);

 DPRINTF("\n");

 if (bus == ((void*)0)) {

  return (0);
 }

 DPRINTF("%s: Controller shutdown\n", device_get_nameunit(bus->bdev));

 USB_BUS_LOCK(bus);
 usb_proc_msignal(USB_BUS_EXPLORE_PROC(bus),
     &bus->shutdown_msg[0], &bus->shutdown_msg[1]);
 if (usb_no_shutdown_wait == 0) {

  usb_proc_mwait(USB_BUS_EXPLORE_PROC(bus),
      &bus->shutdown_msg[0], &bus->shutdown_msg[1]);
 }
 USB_BUS_UNLOCK(bus);

 DPRINTF("%s: Controller shutdown complete\n",
     device_get_nameunit(bus->bdev));

 return (0);
}

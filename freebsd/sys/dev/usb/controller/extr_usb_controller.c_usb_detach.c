
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int * cleanup_msg; int * detach_msg; int power_wdog; } ;
typedef int device_t ;


 int DPRINTF (char*) ;
 int USB_BUS_CONTROL_XFER_PROC (struct usb_bus*) ;
 int USB_BUS_EXPLORE_PROC (struct usb_bus*) ;
 int USB_BUS_GIANT_PROC (struct usb_bus*) ;
 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_NON_GIANT_BULK_PROC (struct usb_bus*) ;
 int USB_BUS_NON_GIANT_ISOC_PROC (struct usb_bus*) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 struct usb_bus* device_get_softc (int ) ;
 int usb_callout_drain (int *) ;
 int usb_proc_free (int ) ;
 int usb_proc_msignal (int ,int *,int *) ;
 int usb_proc_mwait (int ,int *,int *) ;
 int usb_root_mount_rel (struct usb_bus*) ;
 int usbpf_detach (struct usb_bus*) ;

__attribute__((used)) static int
usb_detach(device_t dev)
{
 struct usb_bus *bus = device_get_softc(dev);

 DPRINTF("\n");

 if (bus == ((void*)0)) {

  return (0);
 }

 usb_callout_drain(&bus->power_wdog);






 USB_BUS_LOCK(bus);


 usb_proc_msignal(USB_BUS_EXPLORE_PROC(bus),
     &bus->detach_msg[0], &bus->detach_msg[1]);


 usb_proc_mwait(USB_BUS_EXPLORE_PROC(bus),
     &bus->detach_msg[0], &bus->detach_msg[1]);






 USB_BUS_UNLOCK(bus);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int * resume_msg; } ;
typedef int device_t ;


 int DPRINTF (char*) ;
 int USB_BUS_EXPLORE_PROC (struct usb_bus*) ;
 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 struct usb_bus* device_get_softc (int ) ;
 int usb_proc_msignal (int ,int *,int *) ;

__attribute__((used)) static int
usb_resume(device_t dev)
{
 struct usb_bus *bus = device_get_softc(dev);

 DPRINTF("\n");

 if (bus == ((void*)0)) {

  return (0);
 }

 USB_BUS_LOCK(bus);
 usb_proc_msignal(USB_BUS_EXPLORE_PROC(bus),
     &bus->resume_msg[0], &bus->resume_msg[1]);
 USB_BUS_UNLOCK(bus);

 return (0);
}

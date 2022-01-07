
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_proc_msg {int dummy; } ;
struct usb_device {TYPE_1__* hub; } ;
struct usb_bus_msg {struct usb_bus* bus; } ;
struct usb_bus {scalar_t__ no_explore; int driver_added_refcount; scalar_t__ do_probe; struct usb_device** devices; } ;
struct TYPE_2__ {int (* explore ) (struct usb_device*) ;} ;


 int USB_BUS_CONTROL_XFER_PROC (struct usb_bus*) ;
 int USB_BUS_GIANT_PROC (struct usb_bus*) ;
 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_NON_GIANT_BULK_PROC (struct usb_bus*) ;
 int USB_BUS_NON_GIANT_ISOC_PROC (struct usb_bus*) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 size_t USB_ROOT_HUB_ADDR ;
 int stub1 (struct usb_device*) ;
 int uhub_explore_handle_re_enumerate (struct usb_device*) ;
 int usb_bus_powerd (struct usb_bus*) ;
 int usb_proc_rewakeup (int ) ;
 int usb_root_mount_rel (struct usb_bus*) ;

__attribute__((used)) static void
usb_bus_explore(struct usb_proc_msg *pm)
{
 struct usb_bus *bus;
 struct usb_device *udev;

 bus = ((struct usb_bus_msg *)pm)->bus;
 udev = bus->devices[USB_ROOT_HUB_ADDR];

 if (bus->no_explore != 0)
  return;

 if (udev != ((void*)0)) {
  USB_BUS_UNLOCK(bus);
  uhub_explore_handle_re_enumerate(udev);
  USB_BUS_LOCK(bus);
 }

 if (udev != ((void*)0) && udev->hub != ((void*)0)) {

  if (bus->do_probe) {
   bus->do_probe = 0;
   bus->driver_added_refcount++;
  }
  if (bus->driver_added_refcount == 0) {

   bus->driver_added_refcount = 1;
  }
  USB_BUS_UNLOCK(bus);
  (udev->hub->explore) (udev);
  USB_BUS_LOCK(bus);
 }



}

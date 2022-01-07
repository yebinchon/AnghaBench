
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_proc_msg {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_bus_msg {struct usb_bus* bus; } ;
struct usb_bus {int * bdev; struct usb_device** devices; } ;
typedef int * device_t ;


 int Giant ;
 int USB_BUS_LOCK (struct usb_bus*) ;
 int USB_BUS_UNLOCK (struct usb_bus*) ;
 size_t USB_ROOT_HUB_ADDR ;
 int bus_generic_detach (int *) ;
 int device_set_softc (int *,int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_free_device (struct usb_device*,int ) ;

__attribute__((used)) static void
usb_bus_detach(struct usb_proc_msg *pm)
{
 struct usb_bus *bus;
 struct usb_device *udev;
 device_t dev;

 bus = ((struct usb_bus_msg *)pm)->bus;
 udev = bus->devices[USB_ROOT_HUB_ADDR];
 dev = bus->bdev;

 device_set_softc(dev, ((void*)0));
 USB_BUS_UNLOCK(bus);


 mtx_lock(&Giant);
 bus_generic_detach(dev);
 mtx_unlock(&Giant);




 usb_free_device(udev, 0);

 USB_BUS_LOCK(bus);

 bus->bdev = ((void*)0);
}

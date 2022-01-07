
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int bus_roothold; } ;
typedef int device_t ;


 int DPRINTF (char*) ;
 int ENXIO ;
 struct usb_bus* device_get_ivars (int ) ;
 int device_get_nameunit (int ) ;
 int device_printf (int ,char*) ;
 int root_mount_hold (int ) ;
 int usb_attach_sub (int ,struct usb_bus*) ;
 scalar_t__ usb_no_boot_wait ;

__attribute__((used)) static int
usb_attach(device_t dev)
{
 struct usb_bus *bus = device_get_ivars(dev);

 DPRINTF("\n");

 if (bus == ((void*)0)) {
  device_printf(dev, "USB device has no ivars\n");
  return (ENXIO);
 }







 usb_attach_sub(dev, bus);

 return (0);
}

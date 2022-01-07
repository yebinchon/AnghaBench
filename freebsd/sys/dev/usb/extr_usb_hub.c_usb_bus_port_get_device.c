
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_port {size_t device_index; } ;
struct usb_device {int dummy; } ;
struct usb_bus {struct usb_device** devices; } ;



struct usb_device *
usb_bus_port_get_device(struct usb_bus *bus, struct usb_port *up)
{
 if ((bus == ((void*)0)) || (up == ((void*)0))) {

  return (((void*)0));
 }
 if (up->device_index == 0) {

  return (((void*)0));
 }
 return (bus->devices[up->device_index]);
}

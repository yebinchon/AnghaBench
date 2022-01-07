
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct usb_port {size_t device_index; } ;
struct usb_device {int dummy; } ;
struct usb_bus {struct usb_device** devices; } ;


 int DPRINTFN (int,char*,struct usb_bus*,size_t,struct usb_device*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int usb_ref_lock ;

void
usb_bus_port_set_device(struct usb_bus *bus, struct usb_port *up,
    struct usb_device *udev, uint8_t device_index)
{
 if (bus == ((void*)0)) {

  return;
 }




 if (up) {
  if (udev) {
   up->device_index = device_index;
  } else {
   device_index = up->device_index;
   up->device_index = 0;
  }
 }



 if (device_index != 0) {



  bus->devices[device_index] = udev;



 }



 DPRINTFN(2, "bus %p devices[%u] = %p\n", bus, device_index, udev);
}

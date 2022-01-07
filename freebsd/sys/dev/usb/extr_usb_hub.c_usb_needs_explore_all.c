
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_bus {int dummy; } ;
typedef scalar_t__ device_t ;
typedef int * devclass_t ;


 int DPRINTFN (int,char*) ;
 scalar_t__ devclass_get_device (int *,int) ;
 int devclass_get_maxunit (int *) ;
 struct usb_bus* device_get_softc (scalar_t__) ;
 int * usb_devclass_ptr ;
 int usb_needs_explore (struct usb_bus*,int) ;

void
usb_needs_explore_all(void)
{
 struct usb_bus *bus;
 devclass_t dc;
 device_t dev;
 int max;

 DPRINTFN(3, "\n");

 dc = usb_devclass_ptr;
 if (dc == ((void*)0)) {
  DPRINTFN(0, "no devclass\n");
  return;
 }



 max = devclass_get_maxunit(dc);
 while (max >= 0) {
  dev = devclass_get_device(dc, max);
  if (dev) {
   bus = device_get_softc(dev);
   if (bus) {
    usb_needs_explore(bus, 1);
   }
  }
  max--;
 }
}

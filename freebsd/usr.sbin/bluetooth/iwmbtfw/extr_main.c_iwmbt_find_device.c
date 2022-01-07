
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_device_descriptor {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int libusb_device ;
typedef int libusb_context ;


 int iwmbt_err (char*,long long) ;
 scalar_t__ iwmbt_is_8260 (struct libusb_device_descriptor*) ;
 int libusb_free_device_list (int **,int) ;
 int libusb_get_bus_number (int *) ;
 int libusb_get_device_address (int *) ;
 int libusb_get_device_descriptor (int *,struct libusb_device_descriptor*) ;
 scalar_t__ libusb_get_device_list (int *,int ***) ;
 int * libusb_ref_device (int *) ;
 long long libusb_strerror (int) ;

__attribute__((used)) static libusb_device *
iwmbt_find_device(libusb_context *ctx, int bus_id, int dev_id)
{
 libusb_device **list, *dev = ((void*)0), *found = ((void*)0);
 struct libusb_device_descriptor d;
 ssize_t cnt, i;
 int r;

 cnt = libusb_get_device_list(ctx, &list);
 if (cnt < 0) {
  iwmbt_err("libusb_get_device_list() failed: code %lld",
      (long long int) cnt);
  return (((void*)0));
 }




 for (i = 0; i < cnt; i++) {
  dev = list[i];
  if (bus_id == libusb_get_bus_number(dev) &&
      dev_id == libusb_get_device_address(dev)) {

   r = libusb_get_device_descriptor(dev, &d);
   if (r != 0) {
    iwmbt_err("libusb_get_device_descriptor: %s",
        libusb_strerror(r));
    break;
   }


   if (iwmbt_is_8260(&d)) {



    found = libusb_ref_device(dev);
    break;
   }
  }
 }

 libusb_free_device_list(list, 1);
 return (found);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct libusb_device_descriptor {scalar_t__ idProduct; scalar_t__ idVendor; } ;
struct TYPE_3__ {scalar_t__ product_id; scalar_t__ vendor_id; } ;


 int iwmbt_info (char*) ;
 TYPE_1__* iwmbt_list ;
 scalar_t__ nitems (TYPE_1__*) ;

__attribute__((used)) static int
iwmbt_is_8260(struct libusb_device_descriptor *d)
{
 int i;


 for (i = 0; i < (int) nitems(iwmbt_list); i++) {
  if ((iwmbt_list[i].product_id == d->idProduct) &&
      (iwmbt_list[i].vendor_id == d->idVendor)) {
   iwmbt_info("found 8260/8265");
   return (1);
  }
 }


 return (0);
}

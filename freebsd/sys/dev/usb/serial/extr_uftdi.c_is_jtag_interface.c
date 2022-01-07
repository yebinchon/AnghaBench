
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_device_id {int driver_info; } ;
struct TYPE_2__ {scalar_t__ bIfaceIndex; } ;
struct usb_attach_arg {int device; TYPE_1__ info; } ;
struct jtag_by_name {int jtag_interfaces; int product_name; } ;
typedef int boolean_t ;


 int UFTDI_JTAG_CHECK_STRING ;
 int UFTDI_JTAG_IFACE (scalar_t__) ;
 scalar_t__ UFTDI_JTAG_IFACES_MAX ;
 int UFTDI_JTAG_MASK ;
 struct jtag_by_name* jtag_products_by_name ;
 int nitems (struct jtag_by_name*) ;
 int * strstr (char const*,int ) ;
 char* usb_get_product (int ) ;

__attribute__((used)) static boolean_t
is_jtag_interface(struct usb_attach_arg *uaa, const struct usb_device_id *id)
{
 int i, iface_bit;
 const char * product_name;
 const struct jtag_by_name *jbn;


 if (uaa->info.bIfaceIndex >= UFTDI_JTAG_IFACES_MAX)
  return (0);
 iface_bit = UFTDI_JTAG_IFACE(uaa->info.bIfaceIndex);






 if ((id->driver_info & UFTDI_JTAG_MASK) == UFTDI_JTAG_CHECK_STRING) {
  product_name = usb_get_product(uaa->device);
  for (i = 0; i < nitems(jtag_products_by_name); i++) {
   jbn = &jtag_products_by_name[i];
   if (strstr(product_name, jbn->product_name) != ((void*)0) &&
       (jbn->jtag_interfaces & iface_bit) != 0)
    return (1);
  }
 } else if ((id->driver_info & iface_bit) != 0)
  return (1);

 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct usb_ether {int ue_eaddr; int ue_udev; int ue_dev; } ;
typedef size_t ssize_t ;
typedef int phandle_t ;
typedef int mac ;
typedef int device_t ;


 int ENXIO ;
 size_t OF_getprop (int,char const*,int *,int) ;
 scalar_t__ is_valid_mac_addr (int *) ;
 int memcpy (int ,int *,int) ;
 size_t nitems (char const**) ;
 int usb_fdt_get_node (int ,int ) ;

int
usb_fdt_get_mac_addr(device_t dev, struct usb_ether* ue)
{
 phandle_t node;
 ssize_t i, proplen;
 uint8_t mac[sizeof(ue->ue_eaddr)];
 static const char *properties[] = {
     "mac-address",
     "local-mac-address"
 };

 if ((node = usb_fdt_get_node(ue->ue_dev, ue->ue_udev)) == -1)
  return (ENXIO);
 for (i = 0; i < nitems(properties); ++i) {
  proplen = OF_getprop(node, properties[i], mac, sizeof(mac));
  if (proplen == sizeof(mac) && is_valid_mac_addr(mac)) {
   memcpy(ue->ue_eaddr, mac, sizeof(ue->ue_eaddr));
   return (0);
  }
 }
 return (ENXIO);
}

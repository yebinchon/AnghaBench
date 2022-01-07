
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ bConfigIndex; scalar_t__ bIfaceIndex; } ;
struct usb_attach_arg {scalar_t__ usb_mode; struct drvdb_ent* driver_ivar; TYPE_1__ info; } ;
struct drvdb_ent {int dummy; } ;
typedef int matchfuncptr ;
typedef int device_t ;


 int ENXIO ;
 scalar_t__ NDISUSB_CONFIG_NO ;
 scalar_t__ NDISUSB_IFACE_INDEX ;
 scalar_t__ USB_MODE_HOST ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 scalar_t__ ndisusb_devcompare ;
 int * windrv_lookup (int ,char*) ;
 struct drvdb_ent* windrv_match (int ,int ) ;

__attribute__((used)) static int
ndisusb_match(device_t self)
{
 struct drvdb_ent *db;
 struct usb_attach_arg *uaa = device_get_ivars(self);

 if (uaa->usb_mode != USB_MODE_HOST)
  return (ENXIO);
 if (uaa->info.bConfigIndex != NDISUSB_CONFIG_NO)
  return (ENXIO);
 if (uaa->info.bIfaceIndex != NDISUSB_IFACE_INDEX)
  return (ENXIO);

 if (windrv_lookup(0, "USB Bus") == ((void*)0))
  return (ENXIO);

 db = windrv_match((matchfuncptr)ndisusb_devcompare, self);
 if (db == ((void*)0))
  return (ENXIO);
 uaa->driver_ivar = db;

 return (0);
}

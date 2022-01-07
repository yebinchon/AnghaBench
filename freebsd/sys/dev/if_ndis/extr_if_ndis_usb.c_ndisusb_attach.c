
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ idVendor; scalar_t__ idProduct; } ;
struct usb_attach_arg {TYPE_1__ info; int device; struct drvdb_ent* driver_ivar; } ;
struct ndisusb_softc {int dummy; } ;
struct ndis_usb_type {scalar_t__ ndis_vid; scalar_t__ ndis_did; int * ndis_name; } ;
struct ndis_softc {int ndis_devidx; int ndisusb_dev; int ndis_iftype; int ndis_regvals; int ndis_dobj; int ndisusb_mtx; int ndis_dev; } ;
struct drvdb_ent {struct ndis_usb_type* windrv_devlist; int windrv_regvals; int windrv_object; } ;
typedef int driver_object ;
typedef int device_t ;


 int ENXIO ;
 int MTX_DEF ;
 int MTX_NETWORK_LOCK ;
 int PNPBus ;
 struct usb_attach_arg* device_get_ivars (int ) ;
 struct ndisusb_softc* device_get_softc (int ) ;
 int device_set_usb_desc (int ) ;
 int mtx_init (int *,char*,int ,int ) ;
 scalar_t__ ndis_attach (int ) ;
 int windrv_create_pdo (int *,int ) ;
 int * windrv_lookup (int ,char*) ;

__attribute__((used)) static int
ndisusb_attach(device_t self)
{
 const struct drvdb_ent *db;
 struct ndisusb_softc *dummy = device_get_softc(self);
 struct usb_attach_arg *uaa = device_get_ivars(self);
 struct ndis_softc *sc;
 struct ndis_usb_type *t;
 driver_object *drv;
 int devidx = 0;

 device_set_usb_desc(self);
 db = uaa->driver_ivar;
 sc = (struct ndis_softc *)dummy;
 sc->ndis_dev = self;
 mtx_init(&sc->ndisusb_mtx, "NDIS USB", MTX_NETWORK_LOCK, MTX_DEF);
 sc->ndis_dobj = db->windrv_object;
 sc->ndis_regvals = db->windrv_regvals;
 sc->ndis_iftype = PNPBus;
 sc->ndisusb_dev = uaa->device;



 drv = windrv_lookup(0, "USB Bus");
 windrv_create_pdo(drv, self);



 t = db->windrv_devlist;

 while (t->ndis_name != ((void*)0)) {
  if ((uaa->info.idVendor == t->ndis_vid) &&
      (uaa->info.idProduct == t->ndis_did)) {
   sc->ndis_devidx = devidx;
   break;
  }
  t++;
  devidx++;
 }

 if (ndis_attach(self) != 0)
  return (ENXIO);

 return (0);
}

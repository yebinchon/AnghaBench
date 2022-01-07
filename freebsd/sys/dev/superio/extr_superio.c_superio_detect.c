
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct siosc {scalar_t__ vendor; int io_rid; int devid; int revid; int ldn_reg; int enable_reg; int current_ldn; scalar_t__ io_port; struct resource* io_res; int known_devices; TYPE_2__* methods; } ;
struct resource {int dummy; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;
typedef int descr ;
struct TYPE_4__ {scalar_t__ vendor; int (* exit ) (struct resource*,scalar_t__) ;int (* enter ) (struct resource*,scalar_t__) ;} ;
struct TYPE_3__ {scalar_t__ vendor; int mask; int devid; int * descr; int devices; } ;


 int ENXIO ;
 int KASSERT (int,char*) ;
 scalar_t__ NUMPORTS ;
 int RF_ACTIVE ;
 scalar_t__ SUPERIO_VENDOR_ITE ;
 scalar_t__ SUPERIO_VENDOR_NUVOTON ;
 int SYS_RES_IOPORT ;
 scalar_t__ UINT16_MAX ;
 struct resource* bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_get_resource (int ,int ,int ,scalar_t__*,scalar_t__*) ;
 int bus_release_resource (int ,int ,int,struct resource*) ;
 int device_printf (int ,char*) ;
 int device_set_desc (int ,int *) ;
 int device_set_desc_copy (int ,char*) ;
 TYPE_2__** methods_table ;
 int sio_read (struct resource*,int) ;
 int sio_readw (struct resource*,int) ;
 int snprintf (char*,int,char*,int,int) ;
 int stub1 (struct resource*,scalar_t__) ;
 int stub2 (struct resource*,scalar_t__) ;
 TYPE_1__* superio_table ;

__attribute__((used)) static int
superio_detect(device_t dev, bool claim, struct siosc *sc)
{
 struct resource *res;
 rman_res_t port;
 rman_res_t count;
 uint16_t devid;
 uint8_t revid;
 int error;
 int rid;
 int i, m;

 error = bus_get_resource(dev, SYS_RES_IOPORT, 0, &port, &count);
 if (error != 0)
  return (error);
 if (port > UINT16_MAX || count < NUMPORTS) {
  device_printf(dev, "unexpected I/O range size\n");
  return (ENXIO);
 }
 rid = 0;
 res = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid, RF_ACTIVE);
 if (res == ((void*)0)) {
  if (claim)
   device_printf(dev, "failed to allocate I/O resource\n");
  return (ENXIO);
 }

 for (m = 0; methods_table[m] != ((void*)0); m++) {
  methods_table[m]->enter(res, port);
  if (methods_table[m]->vendor == SUPERIO_VENDOR_ITE) {
   devid = sio_readw(res, 0x20);
   revid = sio_read(res, 0x22);
  } else if (methods_table[m]->vendor == SUPERIO_VENDOR_NUVOTON) {
   devid = sio_read(res, 0x20);
   revid = sio_read(res, 0x21);
   devid = (devid << 8) | revid;
  } else {
   continue;
  }
  methods_table[m]->exit(res, port);
  for (i = 0; superio_table[i].vendor != 0; i++) {
   uint16_t mask;

   mask = superio_table[i].mask;
   if (superio_table[i].vendor !=
       methods_table[m]->vendor)
    continue;
   if ((superio_table[i].devid & ~mask) != (devid & ~mask))
    continue;
   break;
  }


  if (superio_table[i].vendor != 0)
   break;
 }

 if (methods_table[m] == ((void*)0))
  error = ENXIO;
 else
  error = 0;
 if (!claim || error != 0) {
  bus_release_resource(dev, SYS_RES_IOPORT, rid, res);
  return (error);
 }

 sc->methods = methods_table[m];
 sc->vendor = sc->methods->vendor;
 sc->known_devices = superio_table[i].devices;
 sc->io_res = res;
 sc->io_rid = rid;
 sc->io_port = port;
 sc->devid = devid;
 sc->revid = revid;

 KASSERT(sc->vendor == SUPERIO_VENDOR_ITE ||
     sc->vendor == SUPERIO_VENDOR_NUVOTON,
     ("Only ITE and Nuvoton SuperIO-s are supported"));
 sc->ldn_reg = 0x07;
 sc->enable_reg = 0x30;
 sc->current_ldn = 0xff;

 if (superio_table[i].descr != ((void*)0)) {
  device_set_desc(dev, superio_table[i].descr);
 } else if (sc->vendor == SUPERIO_VENDOR_ITE) {
  char descr[64];

  snprintf(descr, sizeof(descr),
      "ITE IT%4x SuperIO (revision 0x%02x)",
      sc->devid, sc->revid);
  device_set_desc_copy(dev, descr);
 }
 return (0);
}

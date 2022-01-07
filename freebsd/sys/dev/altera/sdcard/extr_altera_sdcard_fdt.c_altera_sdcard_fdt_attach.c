
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct altera_sdcard_softc {int * as_res; scalar_t__ as_rid; int as_unit; int as_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int altera_sdcard_attach (struct altera_sdcard_softc*) ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 struct altera_sdcard_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
altera_sdcard_fdt_attach(device_t dev)
{
 struct altera_sdcard_softc *sc;

 sc = device_get_softc(dev);
 sc->as_dev = dev;
 sc->as_unit = device_get_unit(dev);
 sc->as_rid = 0;
 sc->as_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->as_rid, RF_ACTIVE);
 if (sc->as_res == ((void*)0)) {
  device_printf(dev, "couldn't map memory\n");
  return (ENXIO);
 }
 altera_sdcard_attach(sc);
 return (0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terasic_de4led_softc {int * tdl_res; scalar_t__ tdl_rid; int tdl_unit; int tdl_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 struct terasic_de4led_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int terasic_de4led_attach (struct terasic_de4led_softc*) ;

__attribute__((used)) static int
terasic_de4led_fdt_attach(device_t dev)
{
 struct terasic_de4led_softc *sc;

 sc = device_get_softc(dev);
 sc->tdl_dev = dev;
 sc->tdl_unit = device_get_unit(dev);
 sc->tdl_rid = 0;
 sc->tdl_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
     &sc->tdl_rid, RF_ACTIVE);
 if (sc->tdl_res == ((void*)0)) {
  device_printf(dev, "couldn't map memory\n");
  return (ENXIO);
 }
 terasic_de4led_attach(sc);
 return (0);
}

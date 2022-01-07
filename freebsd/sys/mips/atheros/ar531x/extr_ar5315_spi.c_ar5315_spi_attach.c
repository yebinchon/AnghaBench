
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5315_spi_softc {int sc_mem_res; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int ar5315_spi_attach_sysctl (int ) ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 struct ar5315_spi_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ar5315_spi_attach(device_t dev)
{
 struct ar5315_spi_softc *sc = device_get_softc(dev);
 int rid;

 sc->sc_dev = dev;
        rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "Could not map memory\n");
  return (ENXIO);
 }

 device_add_child(dev, "spibus", -1);
 ar5315_spi_attach_sysctl(dev);

 return (bus_generic_attach(dev));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chipc_spi_softc {int sc_flash_res; int sc_flash_rid; int sc_res; int sc_rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bus_generic_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct chipc_spi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
chipc_spi_detach(device_t dev)
{
 struct chipc_spi_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bus_generic_detach(dev)))
  return (error);

 bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_rid, sc->sc_res);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->sc_flash_rid,
     sc->sc_flash_res);
 return (0);
}

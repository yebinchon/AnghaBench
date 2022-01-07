
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_softc {int smc_usemem; } ;
typedef int device_t ;


 int ENXIO ;
 struct smc_softc* device_get_softc (int ) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 int ofw_bus_status_okay (int ) ;
 scalar_t__ smc_probe (int ) ;

__attribute__((used)) static int
smc_fdt_probe(device_t dev)
{
 struct smc_softc *sc;

 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (ofw_bus_is_compatible(dev, "smsc,lan91c111")) {
  sc = device_get_softc(dev);
  sc->smc_usemem = 1;

  if (smc_probe(dev) != 0) {
   return (ENXIO);
  }

  return (0);
 }

 return (ENXIO);
}

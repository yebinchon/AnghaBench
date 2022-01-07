
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvram2env_softc {int bst; } ;
typedef int device_t ;


 struct nvram2env_softc* device_get_softc (int ) ;
 int mips_bus_space_generic ;
 int nvram2env_probe (int ) ;

__attribute__((used)) static int
nvram2env_mips_probe(device_t dev)
{
 struct nvram2env_softc *sc;

 sc = device_get_softc(dev);
 sc->bst = mips_bus_space_generic;

 return (nvram2env_probe(dev));
}

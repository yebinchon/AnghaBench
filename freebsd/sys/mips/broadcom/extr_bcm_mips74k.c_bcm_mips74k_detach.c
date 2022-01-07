
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_mips74k_softc {int mem; int mem_rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bcm_mips_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct bcm_mips74k_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm_mips74k_detach(device_t dev)
{
 struct bcm_mips74k_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bcm_mips_detach(dev)))
  return (error);

 bus_release_resource(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem);

 return (0);
}

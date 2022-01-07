
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_bmips_softc {int cfg; int cfg_rid; int mem; int mem_rid; } ;
typedef int device_t ;


 int SYS_RES_MEMORY ;
 int bcm_mips_detach (int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct bcm_bmips_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bcm_bmips_detach(device_t dev)
{
 struct bcm_bmips_softc *sc;
 int error;

 sc = device_get_softc(dev);

 if ((error = bcm_mips_detach(dev)))
  return (error);

 bus_release_resource(dev, SYS_RES_MEMORY, sc->mem_rid, sc->mem);
 bus_release_resource(dev, SYS_RES_MEMORY, sc->cfg_rid, sc->cfg);

 return (0);
}

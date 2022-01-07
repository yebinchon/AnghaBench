
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunder_mdio_softc {int * reg_base; } ;
typedef int device_t ;


 int REG_BASE_RID ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int *) ;
 struct thunder_mdio_softc* device_get_softc (int ) ;

__attribute__((used)) static int
thunder_mdio_detach(device_t dev)
{
 struct thunder_mdio_softc *sc;

 sc = device_get_softc(dev);

 if (sc->reg_base != ((void*)0)) {
  bus_release_resource(dev, SYS_RES_MEMORY, REG_BASE_RID,
      sc->reg_base);
 }

 return (0);
}

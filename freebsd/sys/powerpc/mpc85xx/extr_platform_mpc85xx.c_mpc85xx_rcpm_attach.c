
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc85xx_rcpm_softc {int sc_mem; } ;
typedef int device_t ;


 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_MEMORY ;
 int bus_alloc_resource_any (int ,int ,int*,int) ;
 struct mpc85xx_rcpm_softc* device_get_softc (int ) ;
 int freeze_timebase ;
 int mpc85xx_rcpm_freeze_timebase ;
 int rcpm_dev ;

__attribute__((used)) static int
mpc85xx_rcpm_attach(device_t dev)
{
 struct mpc85xx_rcpm_softc *sc;
 int rid;

 sc = device_get_softc(dev);
 freeze_timebase = mpc85xx_rcpm_freeze_timebase;
 rcpm_dev = dev;

 rid = 0;
 sc->sc_mem = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE | RF_SHAREABLE);

 return (0);
}

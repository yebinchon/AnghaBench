
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpc85xx_rcpm_softc {int sc_mem; } ;
typedef int device_t ;


 int RCPM_CTBENR ;
 int bus_write_4 (int ,int ,int) ;
 struct mpc85xx_rcpm_softc* device_get_softc (int ) ;
 int maxcpu ;

__attribute__((used)) static void
mpc85xx_rcpm_freeze_timebase(device_t dev, bool freeze)
{
 struct mpc85xx_rcpm_softc *sc;

 sc = device_get_softc(dev);

 if (freeze)
  bus_write_4(sc->sc_mem, RCPM_CTBENR, 0);
 else
  bus_write_4(sc->sc_mem, RCPM_CTBENR, (1 << maxcpu) - 1);
}

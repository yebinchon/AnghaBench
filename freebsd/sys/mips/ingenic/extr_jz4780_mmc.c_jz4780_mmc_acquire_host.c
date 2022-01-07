
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_mmc_softc {scalar_t__ sc_bus_busy; int sc_mtx; } ;
typedef int device_t ;


 int JZ_MMC_LOCK (struct jz4780_mmc_softc*) ;
 int JZ_MMC_UNLOCK (struct jz4780_mmc_softc*) ;
 int PCATCH ;
 struct jz4780_mmc_softc* device_get_softc (int ) ;
 int msleep (struct jz4780_mmc_softc*,int *,int ,char*,int ) ;

__attribute__((used)) static int
jz4780_mmc_acquire_host(device_t bus, device_t child)
{
 struct jz4780_mmc_softc *sc;
 int error;

 sc = device_get_softc(bus);
 JZ_MMC_LOCK(sc);
 while (sc->sc_bus_busy) {
  error = msleep(sc, &sc->sc_mtx, PCATCH, "mmchw", 0);
  if (error != 0) {
   JZ_MMC_UNLOCK(sc);
   return (error);
  }
 }
 sc->sc_bus_busy++;
 JZ_MMC_UNLOCK(sc);

 return (0);
}

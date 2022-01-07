
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jz4780_mmc_softc {int sc_bus_busy; } ;
typedef int device_t ;


 int JZ_MMC_LOCK (struct jz4780_mmc_softc*) ;
 int JZ_MMC_UNLOCK (struct jz4780_mmc_softc*) ;
 struct jz4780_mmc_softc* device_get_softc (int ) ;
 int wakeup (struct jz4780_mmc_softc*) ;

__attribute__((used)) static int
jz4780_mmc_release_host(device_t bus, device_t child)
{
 struct jz4780_mmc_softc *sc;

 sc = device_get_softc(bus);
 JZ_MMC_LOCK(sc);
 sc->sc_bus_busy--;
 wakeup(sc);
 JZ_MMC_UNLOCK(sc);

 return (0);
}

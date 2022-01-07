
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwmmc_softc {int bus_busy; } ;
typedef int device_t ;


 int DWMMC_LOCK (struct dwmmc_softc*) ;
 int DWMMC_UNLOCK (struct dwmmc_softc*) ;
 struct dwmmc_softc* device_get_softc (int ) ;
 int wakeup (struct dwmmc_softc*) ;

__attribute__((used)) static int
dwmmc_release_host(device_t brdev, device_t reqdev)
{
 struct dwmmc_softc *sc;

 sc = device_get_softc(brdev);

 DWMMC_LOCK(sc);
 sc->bus_busy--;
 wakeup(sc);
 DWMMC_UNLOCK(sc);
 return (0);
}

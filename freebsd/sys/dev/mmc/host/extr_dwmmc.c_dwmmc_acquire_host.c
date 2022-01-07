
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwmmc_softc {scalar_t__ bus_busy; int sc_mtx; } ;
typedef int device_t ;


 int DWMMC_LOCK (struct dwmmc_softc*) ;
 int DWMMC_UNLOCK (struct dwmmc_softc*) ;
 int PZERO ;
 struct dwmmc_softc* device_get_softc (int ) ;
 int hz ;
 int msleep (struct dwmmc_softc*,int *,int ,char*,int) ;

__attribute__((used)) static int
dwmmc_acquire_host(device_t brdev, device_t reqdev)
{
 struct dwmmc_softc *sc;

 sc = device_get_softc(brdev);

 DWMMC_LOCK(sc);
 while (sc->bus_busy)
  msleep(sc, &sc->sc_mtx, PZERO, "dwmmcah", hz / 5);
 sc->bus_busy++;
 DWMMC_UNLOCK(sc);
 return (0);
}

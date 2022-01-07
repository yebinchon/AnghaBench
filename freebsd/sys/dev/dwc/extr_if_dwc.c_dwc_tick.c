
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct dwc_softc {scalar_t__ tx_watchdog_count; int link_is_up; int dwc_callout; int mii_softc; struct ifnet* ifp; } ;


 int DWC_ASSERT_LOCKED (struct dwc_softc*) ;
 int IFF_DRV_RUNNING ;
 int callout_reset (int *,int ,void (*) (void*),struct dwc_softc*) ;
 int dwc_harvest_stats (struct dwc_softc*) ;
 int dwc_txfinish_locked (struct dwc_softc*) ;
 int dwc_txstart_locked (struct dwc_softc*) ;
 int hz ;
 int mii_tick (int ) ;

__attribute__((used)) static void
dwc_tick(void *arg)
{
 struct dwc_softc *sc;
 struct ifnet *ifp;
 int link_was_up;

 sc = arg;

 DWC_ASSERT_LOCKED(sc);

 ifp = sc->ifp;

 if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
     return;






 if (sc->tx_watchdog_count > 0) {
  if (--sc->tx_watchdog_count == 0) {
   dwc_txfinish_locked(sc);
  }
 }


 dwc_harvest_stats(sc);


 link_was_up = sc->link_is_up;
 mii_tick(sc->mii_softc);
 if (sc->link_is_up && !link_was_up)
  dwc_txstart_locked(sc);


 callout_reset(&sc->dwc_callout, hz, dwc_tick, sc);
}

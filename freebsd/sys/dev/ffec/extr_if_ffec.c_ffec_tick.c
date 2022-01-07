
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct ffec_softc {scalar_t__ tx_watchdog_count; int link_is_up; int ffec_callout; int mii_softc; struct ifnet* ifp; } ;


 int FFEC_ASSERT_LOCKED (struct ffec_softc*) ;
 int IFF_DRV_RUNNING ;
 int callout_reset (int *,int ,void (*) (void*),struct ffec_softc*) ;
 int ffec_harvest_stats (struct ffec_softc*) ;
 int ffec_txfinish_locked (struct ffec_softc*) ;
 int ffec_txstart_locked (struct ffec_softc*) ;
 int hz ;
 int mii_tick (int ) ;

__attribute__((used)) static void
ffec_tick(void *arg)
{
 struct ffec_softc *sc;
 struct ifnet *ifp;
 int link_was_up;

 sc = arg;

 FFEC_ASSERT_LOCKED(sc);

 ifp = sc->ifp;

 if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
     return;






 if (sc->tx_watchdog_count > 0) {
  if (--sc->tx_watchdog_count == 0) {
   ffec_txfinish_locked(sc);
  }
 }


 ffec_harvest_stats(sc);


 link_was_up = sc->link_is_up;
 mii_tick(sc->mii_softc);
 if (sc->link_is_up && !link_was_up)
  ffec_txstart_locked(sc);


 callout_reset(&sc->ffec_callout, hz, ffec_tick, sc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsec_softc {int tsec_link; int tsec_callout; int tsec_mii; struct ifnet* tsec_ifp; } ;
struct ifnet {int if_snd; } ;


 int IFQ_DRV_IS_EMPTY (int *) ;
 int TSEC_GLOBAL_LOCK (struct tsec_softc*) ;
 int TSEC_GLOBAL_UNLOCK (struct tsec_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct tsec_softc*) ;
 int hz ;
 int mii_tick (int ) ;
 int tsec_start_locked (struct ifnet*) ;
 int tsec_watchdog (struct tsec_softc*) ;

__attribute__((used)) static void
tsec_tick(void *arg)
{
 struct tsec_softc *sc = arg;
 struct ifnet *ifp;
 int link;

 TSEC_GLOBAL_LOCK(sc);

 tsec_watchdog(sc);

 ifp = sc->tsec_ifp;
 link = sc->tsec_link;

 mii_tick(sc->tsec_mii);

 if (link == 0 && sc->tsec_link == 1 &&
     (!IFQ_DRV_IS_EMPTY(&ifp->if_snd)))
  tsec_start_locked(ifp);


 callout_reset(&sc->tsec_callout, hz, tsec_tick, sc);

 TSEC_GLOBAL_UNLOCK(sc);
}

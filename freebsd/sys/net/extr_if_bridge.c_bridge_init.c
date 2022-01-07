
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct bridge_softc {int sc_stp; int sc_brcallout; struct ifnet* sc_ifp; } ;


 int BRIDGE_LOCK (struct bridge_softc*) ;
 int BRIDGE_UNLOCK (struct bridge_softc*) ;
 int IFF_DRV_RUNNING ;
 int bridge_rtable_prune_period ;
 int bridge_timer ;
 int bstp_init (int *) ;
 int callout_reset (int *,int,int ,struct bridge_softc*) ;
 int hz ;

__attribute__((used)) static void
bridge_init(void *xsc)
{
 struct bridge_softc *sc = (struct bridge_softc *)xsc;
 struct ifnet *ifp = sc->sc_ifp;

 if (ifp->if_drv_flags & IFF_DRV_RUNNING)
  return;

 BRIDGE_LOCK(sc);
 callout_reset(&sc->sc_brcallout, bridge_rtable_prune_period * hz,
     bridge_timer, sc);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 bstp_init(&sc->sc_stp);

 BRIDGE_UNLOCK(sc);
}

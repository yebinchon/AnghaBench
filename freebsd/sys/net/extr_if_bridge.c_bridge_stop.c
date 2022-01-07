
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; struct bridge_softc* if_softc; } ;
struct bridge_softc {int sc_stp; int sc_brcallout; } ;


 int BRIDGE_LOCK_ASSERT (struct bridge_softc*) ;
 int IFBF_FLUSHDYN ;
 int IFF_DRV_RUNNING ;
 int bridge_rtflush (struct bridge_softc*,int ) ;
 int bstp_stop (int *) ;
 int callout_stop (int *) ;

__attribute__((used)) static void
bridge_stop(struct ifnet *ifp, int disable)
{
 struct bridge_softc *sc = ifp->if_softc;

 BRIDGE_LOCK_ASSERT(sc);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0)
  return;

 callout_stop(&sc->sc_brcallout);
 bstp_stop(&sc->sc_stp);

 bridge_rtflush(sc, IFBF_FLUSHDYN);

 ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
}

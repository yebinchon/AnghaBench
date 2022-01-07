
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_act_vq_pairs; int vtnet_tick_ch; int * vtnet_txqs; struct ifnet* vtnet_ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int VTNET_CORE_LOCK_ASSERT (struct vtnet_softc*) ;
 int callout_schedule (int *,int ) ;
 int hz ;
 int vtnet_init_locked (struct vtnet_softc*) ;
 int vtnet_watchdog (int *) ;

__attribute__((used)) static void
vtnet_tick(void *xsc)
{
 struct vtnet_softc *sc;
 struct ifnet *ifp;
 int i, timedout;

 sc = xsc;
 ifp = sc->vtnet_ifp;
 timedout = 0;

 VTNET_CORE_LOCK_ASSERT(sc);

 for (i = 0; i < sc->vtnet_act_vq_pairs; i++)
  timedout |= vtnet_watchdog(&sc->vtnet_txqs[i]);

 if (timedout != 0) {
  ifp->if_drv_flags &= ~IFF_DRV_RUNNING;
  vtnet_init_locked(sc);
 } else
  callout_schedule(&sc->vtnet_tick_ch, hz);
}

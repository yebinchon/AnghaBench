
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bridge_softc {int sc_brcallout; TYPE_1__* sc_ifp; } ;
struct TYPE_2__ {int if_drv_flags; int if_vnet; } ;


 int BRIDGE_LOCK_ASSERT (struct bridge_softc*) ;
 int CURVNET_RESTORE () ;
 int CURVNET_SET (int ) ;
 int IFF_DRV_RUNNING ;
 int bridge_rtable_prune_period ;
 int bridge_rtage (struct bridge_softc*) ;
 int callout_reset (int *,int,void (*) (void*),struct bridge_softc*) ;
 int hz ;

__attribute__((used)) static void
bridge_timer(void *arg)
{
 struct bridge_softc *sc = arg;

 BRIDGE_LOCK_ASSERT(sc);


 CURVNET_SET(sc->sc_ifp->if_vnet);
 bridge_rtage(sc);

 if (sc->sc_ifp->if_drv_flags & IFF_DRV_RUNNING)
  callout_reset(&sc->sc_brcallout,
      bridge_rtable_prune_period * hz, bridge_timer, sc);
 CURVNET_RESTORE();
}

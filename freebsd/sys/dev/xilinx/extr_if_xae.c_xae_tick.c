
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xae_softc {int link_is_up; int xae_callout; struct ifnet* ifp; int mii_softc; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int XAE_ASSERT_LOCKED (struct xae_softc*) ;
 int callout_reset (int *,int ,void (*) (void*),struct xae_softc*) ;
 int hz ;
 int mii_tick (int ) ;
 int xae_harvest_stats (struct xae_softc*) ;
 int xae_transmit_locked (struct ifnet*) ;

__attribute__((used)) static void
xae_tick(void *arg)
{
 struct xae_softc *sc;
 struct ifnet *ifp;
 int link_was_up;

 sc = arg;

 XAE_ASSERT_LOCKED(sc);

 ifp = sc->ifp;

 if (!(ifp->if_drv_flags & IFF_DRV_RUNNING))
  return;


 xae_harvest_stats(sc);


 link_was_up = sc->link_is_up;
 mii_tick(sc->mii_softc);
 if (sc->link_is_up && !link_was_up)
  xae_transmit_locked(sc->ifp);


 callout_reset(&sc->xae_callout, hz, xae_tick, sc);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xae_softc {int xae_callout; int mii_softc; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_RUNNING ;
 int RCW1_RX ;
 int TC_TX ;
 int WRITE4 (struct xae_softc*,int ,int ) ;
 int XAE_ASSERT_LOCKED (struct xae_softc*) ;
 int XAE_RCW1 ;
 int XAE_TC ;
 int callout_reset (int *,int ,int ,struct xae_softc*) ;
 int hz ;
 int mii_mediachg (int ) ;
 int xae_setup_rxfilter (struct xae_softc*) ;
 int xae_tick ;

__attribute__((used)) static void
xae_init_locked(struct xae_softc *sc)
{
 struct ifnet *ifp;

 XAE_ASSERT_LOCKED(sc);

 ifp = sc->ifp;
 if (ifp->if_drv_flags & IFF_DRV_RUNNING)
  return;

 ifp->if_drv_flags |= IFF_DRV_RUNNING;

 xae_setup_rxfilter(sc);


 WRITE4(sc, XAE_TC, TC_TX);


 WRITE4(sc, XAE_RCW1, RCW1_RX);





 mii_mediachg(sc->mii_softc);
 callout_reset(&sc->xae_callout, hz, xae_tick, sc);
}

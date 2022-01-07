
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct xae_softc {int xae_callout; struct ifnet* ifp; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int RCW1_RX ;
 int READ4 (struct xae_softc*,int ) ;
 int TC_TX ;
 int WRITE4 (struct xae_softc*,int ,int ) ;
 int XAE_ASSERT_LOCKED (struct xae_softc*) ;
 int XAE_RCW1 ;
 int XAE_TC ;
 int callout_stop (int *) ;

__attribute__((used)) static void
xae_stop_locked(struct xae_softc *sc)
{
 struct ifnet *ifp;
 uint32_t reg;

 XAE_ASSERT_LOCKED(sc);

 ifp = sc->ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);

 callout_stop(&sc->xae_callout);


 reg = READ4(sc, XAE_TC);
 reg &= ~TC_TX;
 WRITE4(sc, XAE_TC, reg);


 reg = READ4(sc, XAE_RCW1);
 reg &= ~RCW1_RX;
 WRITE4(sc, XAE_RCW1, reg);
}

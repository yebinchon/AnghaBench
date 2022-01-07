
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf10bmac_softc {int nf10bmac_flags; struct ifnet* nf10bmac_ifp; int nf10bmac_tick; scalar_t__ nf10bmac_watchdog_timer; } ;
struct ifnet {int if_drv_flags; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int LINK_STATE_DOWN ;
 int NF10BMAC_FLAGS_LINK ;
 int NF10BMAC_LOCK_ASSERT (struct nf10bmac_softc*) ;
 int NF10BMAC_RX_INTR_CLEAR_DIS (struct nf10bmac_softc*) ;
 int callout_stop (int *) ;
 int if_link_state_change (struct ifnet*,int ) ;

__attribute__((used)) static int
nf10bmac_stop_locked(struct nf10bmac_softc *sc)
{
 struct ifnet *ifp;

 NF10BMAC_LOCK_ASSERT(sc);






 ifp = sc->nf10bmac_ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 NF10BMAC_RX_INTR_CLEAR_DIS(sc);

 sc->nf10bmac_flags &= ~NF10BMAC_FLAGS_LINK;
 if_link_state_change(ifp, LINK_STATE_DOWN);

 return (0);
}

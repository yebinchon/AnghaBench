
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct bfe_softc {scalar_t__ bfe_watchdog_timer; int bfe_stat_co; int bfe_flags; struct ifnet* bfe_ifp; } ;


 int BFE_FLAG_LINK ;
 int BFE_LOCK_ASSERT (struct bfe_softc*) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int bfe_chip_halt (struct bfe_softc*) ;
 int bfe_rx_ring_free (struct bfe_softc*) ;
 int bfe_tx_ring_free (struct bfe_softc*) ;
 int callout_stop (int *) ;

__attribute__((used)) static void
bfe_stop(struct bfe_softc *sc)
{
 struct ifnet *ifp;

 BFE_LOCK_ASSERT(sc);

 ifp = sc->bfe_ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->bfe_flags &= ~BFE_FLAG_LINK;
 callout_stop(&sc->bfe_stat_co);
 sc->bfe_watchdog_timer = 0;

 bfe_chip_halt(sc);
 bfe_tx_ring_free(sc);
 bfe_rx_ring_free(sc);
}

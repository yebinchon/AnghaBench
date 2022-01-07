
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct bce_softc {int bce_link_up; scalar_t__ watchdog_timer; int bce_tick_callout; struct ifnet* bce_ifp; } ;


 int BCE_LOCK_ASSERT (struct bce_softc*) ;
 int BCE_MISC_ENABLE_CLR_BITS ;
 int BCE_MISC_ENABLE_CLR_DEFAULT ;
 int BCE_VERBOSE_RESET ;
 int DBENTER (int ) ;
 int DBEXIT (int ) ;
 int DELAY (int) ;
 int FALSE ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int REG_RD (struct bce_softc*,int ) ;
 int REG_WR (struct bce_softc*,int ,int ) ;
 scalar_t__ TRUE ;
 int bce_disable_intr (struct bce_softc*) ;
 int bce_free_pg_chain (struct bce_softc*) ;
 int bce_free_rx_chain (struct bce_softc*) ;
 int bce_free_tx_chain (struct bce_softc*) ;
 scalar_t__ bce_hdr_split ;
 int callout_stop (int *) ;

__attribute__((used)) static void
bce_stop(struct bce_softc *sc)
{
 struct ifnet *ifp;

 DBENTER(BCE_VERBOSE_RESET);

 BCE_LOCK_ASSERT(sc);

 ifp = sc->bce_ifp;

 callout_stop(&sc->bce_tick_callout);


 REG_WR(sc, BCE_MISC_ENABLE_CLR_BITS, BCE_MISC_ENABLE_CLR_DEFAULT);
 REG_RD(sc, BCE_MISC_ENABLE_CLR_BITS);
 DELAY(20);

 bce_disable_intr(sc);


 if (bce_hdr_split == TRUE) {
  bce_free_pg_chain(sc);
 }
 bce_free_rx_chain(sc);


 bce_free_tx_chain(sc);

 sc->watchdog_timer = 0;

 sc->bce_link_up = FALSE;

 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);

 DBEXIT(BCE_VERBOSE_RESET);
}

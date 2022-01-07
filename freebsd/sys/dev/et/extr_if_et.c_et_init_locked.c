
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct et_softc {int sc_tick; int sc_flags; int sc_timer; struct ifnet* ifp; } ;


 int CSR_WRITE_4 (struct et_softc*,int ,int ) ;
 int ET_FLAG_LINK ;
 int ET_INTRS ;
 int ET_INTR_MASK ;
 int ET_LOCK_ASSERT (struct et_softc*) ;
 int ET_TIMER ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int callout_reset (int *,int ,int ,struct et_softc*) ;
 int et_chip_init (struct et_softc*) ;
 int et_ifmedia_upd_locked (struct ifnet*) ;
 int et_init_rx_ring (struct et_softc*) ;
 int et_init_tx_ring (struct et_softc*) ;
 int et_reset (struct et_softc*) ;
 int et_start_rxdma (struct et_softc*) ;
 int et_start_txdma (struct et_softc*) ;
 int et_stop (struct et_softc*) ;
 int et_tick ;
 int hz ;

__attribute__((used)) static void
et_init_locked(struct et_softc *sc)
{
 struct ifnet *ifp;
 int error;

 ET_LOCK_ASSERT(sc);

 ifp = sc->ifp;
 if (ifp->if_drv_flags & IFF_DRV_RUNNING)
  return;

 et_stop(sc);
 et_reset(sc);

 et_init_tx_ring(sc);
 error = et_init_rx_ring(sc);
 if (error)
  return;

 error = et_chip_init(sc);
 if (error)
  goto fail;




 error = et_start_rxdma(sc);
 if (error)
  return;

 error = et_start_txdma(sc);
 if (error)
  return;


 CSR_WRITE_4(sc, ET_INTR_MASK, ~ET_INTRS);

 CSR_WRITE_4(sc, ET_TIMER, sc->sc_timer);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 sc->sc_flags &= ~ET_FLAG_LINK;
 et_ifmedia_upd_locked(ifp);

 callout_reset(&sc->sc_tick, hz, et_tick, sc);

fail:
 if (error)
  et_stop(sc);
}

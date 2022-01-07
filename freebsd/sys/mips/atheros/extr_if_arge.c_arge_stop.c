
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_drv_flags; } ;
struct arge_softc {int arge_stat_callout; scalar_t__ arge_miibus; struct ifnet* arge_ifp; } ;


 int AR71XX_DMA_INTR ;
 int ARGE_LOCK_ASSERT (struct arge_softc*) ;
 int ARGE_WRITE (struct arge_softc*,int ,int ) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int arge_flush_ddr (struct arge_softc*) ;
 int arge_reset_dma (struct arge_softc*) ;
 int arge_rx_ring_free (struct arge_softc*) ;
 int arge_tx_ring_free (struct arge_softc*) ;
 int callout_stop (int *) ;

__attribute__((used)) static void
arge_stop(struct arge_softc *sc)
{
 struct ifnet *ifp;

 ARGE_LOCK_ASSERT(sc);

 ifp = sc->arge_ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 if (sc->arge_miibus)
  callout_stop(&sc->arge_stat_callout);


 ARGE_WRITE(sc, AR71XX_DMA_INTR, 0);

 arge_reset_dma(sc);


 arge_flush_ddr(sc);
 arge_rx_ring_free(sc);
 arge_tx_ring_free(sc);
}

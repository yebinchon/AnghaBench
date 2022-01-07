
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vte_txdesc {int tx_flags; int * tx_m; int tx_dmamap; } ;
struct TYPE_2__ {int ** vte_txmbufs; int vte_tx_tag; struct vte_txdesc* vte_txdesc; int vte_rx_tag; struct vte_rxdesc* vte_rxdesc; } ;
struct vte_softc {TYPE_1__ vte_cdata; scalar_t__ vte_watchdog_timer; int vte_tick_ch; int vte_flags; struct ifnet* vte_ifp; } ;
struct vte_rxdesc {int * rx_m; int rx_dmamap; } ;
struct ifnet {int if_drv_flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_2 (struct vte_softc*,int ) ;
 int CSR_WRITE_2 (struct vte_softc*,int ,int ) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int VTE_FLAG_LINK ;
 int VTE_LOCK_ASSERT (struct vte_softc*) ;
 int VTE_MECIER ;
 int VTE_MIER ;
 int VTE_MISR ;
 int VTE_RX_RING_CNT ;
 int VTE_TXMBUF ;
 int VTE_TX_RING_CNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int m_freem (int *) ;
 int vte_stats_update (struct vte_softc*) ;
 int vte_stop_mac (struct vte_softc*) ;

__attribute__((used)) static void
vte_stop(struct vte_softc *sc)
{
 struct ifnet *ifp;
 struct vte_txdesc *txd;
 struct vte_rxdesc *rxd;
 int i;

 VTE_LOCK_ASSERT(sc);



 ifp = sc->vte_ifp;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc->vte_flags &= ~VTE_FLAG_LINK;
 callout_stop(&sc->vte_tick_ch);
 sc->vte_watchdog_timer = 0;
 vte_stats_update(sc);

 CSR_WRITE_2(sc, VTE_MIER, 0);
 CSR_WRITE_2(sc, VTE_MECIER, 0);

 vte_stop_mac(sc);

 CSR_READ_2(sc, VTE_MISR);



 for (i = 0; i < VTE_RX_RING_CNT; i++) {
  rxd = &sc->vte_cdata.vte_rxdesc[i];
  if (rxd->rx_m != ((void*)0)) {
   bus_dmamap_sync(sc->vte_cdata.vte_rx_tag,
       rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->vte_cdata.vte_rx_tag,
       rxd->rx_dmamap);
   m_freem(rxd->rx_m);
   rxd->rx_m = ((void*)0);
  }
 }
 for (i = 0; i < VTE_TX_RING_CNT; i++) {
  txd = &sc->vte_cdata.vte_txdesc[i];
  if (txd->tx_m != ((void*)0)) {
   bus_dmamap_sync(sc->vte_cdata.vte_tx_tag,
       txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->vte_cdata.vte_tx_tag,
       txd->tx_dmamap);
   if ((txd->tx_flags & VTE_TXMBUF) == 0)
    m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
   txd->tx_flags &= ~VTE_TXMBUF;
  }
 }

 for (i = 0; i < VTE_TX_RING_CNT; i++) {
  if (sc->vte_cdata.vte_txmbufs[i] != ((void*)0)) {
   m_freem(sc->vte_cdata.vte_txmbufs[i]);
   sc->vte_cdata.vte_txmbufs[i] = ((void*)0);
  }
 }
}

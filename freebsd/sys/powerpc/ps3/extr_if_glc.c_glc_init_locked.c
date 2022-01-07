
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct glc_txsoft {int * txs_mbuf; int txs_dmamap; } ;
struct glc_softc {int first_used_txdma_slot; int sc_tick_ch; scalar_t__ sc_wdog_timer; TYPE_1__* sc_ifp; int sc_ifpflags; int sc_self; struct glc_rxsoft* sc_rxsoft; int sc_dev; int sc_bus; scalar_t__ bsy_txdma_slots; int sc_txfreeq; int sc_txdma_tag; int sc_txdirtyq; int sc_rxdmadesc_map; int sc_dmadesc_tag; int sc_mtx; } ;
struct glc_rxsoft {int rxs_desc_slot; int rxs_desc; int * rxs_mbuf; } ;
struct TYPE_2__ {int if_flags; int if_drv_flags; } ;


 int BUS_DMASYNC_PREREAD ;
 int GLC_MAX_RX_PACKETS ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MA_OWNED ;
 struct glc_txsoft* STAILQ_FIRST (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct glc_txsoft*,int ) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_reset (int *,int ,int ,struct glc_softc*) ;
 int device_printf (int ,char*,int) ;
 int glc_add_rxbuf (struct glc_softc*,int) ;
 int glc_add_rxbuf_dma (struct glc_softc*,int) ;
 int glc_set_multicast (struct glc_softc*) ;
 int glc_tick ;
 int hz ;
 int lv1_net_start_rx_dma (int ,int ,int ,int ) ;
 int lv1_net_stop_rx_dma (int ,int ,int ) ;
 int lv1_net_stop_tx_dma (int ,int ,int ) ;
 int m_freem (int *) ;
 int mtx_assert (int *,int ) ;
 int txs_q ;

__attribute__((used)) static void
glc_init_locked(struct glc_softc *sc)
{
 int i, error;
 struct glc_rxsoft *rxs;
 struct glc_txsoft *txs;

 mtx_assert(&sc->sc_mtx, MA_OWNED);

 lv1_net_stop_tx_dma(sc->sc_bus, sc->sc_dev, 0);
 lv1_net_stop_rx_dma(sc->sc_bus, sc->sc_dev, 0);

 glc_set_multicast(sc);

 for (i = 0; i < GLC_MAX_RX_PACKETS; i++) {
  rxs = &sc->sc_rxsoft[i];
  rxs->rxs_desc_slot = i;

  if (rxs->rxs_mbuf == ((void*)0)) {
   glc_add_rxbuf(sc, i);

   if (rxs->rxs_mbuf == ((void*)0)) {
    rxs->rxs_desc_slot = -1;
    break;
   }
  }

  glc_add_rxbuf_dma(sc, i);
  bus_dmamap_sync(sc->sc_dmadesc_tag, sc->sc_rxdmadesc_map,
      BUS_DMASYNC_PREREAD);
 }


 while ((txs = STAILQ_FIRST(&sc->sc_txdirtyq)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&sc->sc_txdirtyq, txs_q);
  bus_dmamap_unload(sc->sc_txdma_tag, txs->txs_dmamap);

  if (txs->txs_mbuf != ((void*)0)) {
   m_freem(txs->txs_mbuf);
   txs->txs_mbuf = ((void*)0);
  }

  STAILQ_INSERT_TAIL(&sc->sc_txfreeq, txs, txs_q);
 }
 sc->first_used_txdma_slot = -1;
 sc->bsy_txdma_slots = 0;

 error = lv1_net_start_rx_dma(sc->sc_bus, sc->sc_dev,
     sc->sc_rxsoft[0].rxs_desc, 0);
 if (error != 0)
  device_printf(sc->sc_self,
      "lv1_net_start_rx_dma error: %d\n", error);

 sc->sc_ifp->if_drv_flags |= IFF_DRV_RUNNING;
 sc->sc_ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;
 sc->sc_ifpflags = sc->sc_ifp->if_flags;

 sc->sc_wdog_timer = 0;
 callout_reset(&sc->sc_tick_ch, hz, glc_tick, sc);
}

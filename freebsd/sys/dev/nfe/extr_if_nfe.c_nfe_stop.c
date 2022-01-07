
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfe_tx_ring {int tx_data_tag; struct nfe_tx_data* data; } ;
struct nfe_tx_data {int * m; int tx_data_map; } ;
struct nfe_jrx_ring {int jrx_data_tag; struct nfe_rx_data* jdata; } ;
struct nfe_rx_ring {int rx_data_tag; struct nfe_rx_data* data; } ;
struct nfe_softc {int nfe_flags; struct nfe_tx_ring txq; struct nfe_jrx_ring jrxq; struct nfe_rx_ring rxq; scalar_t__ nfe_link; int nfe_stat_ch; scalar_t__ nfe_watchdog_timer; } ;
struct nfe_rx_data {int * m; int rx_data_map; } ;
typedef int if_t ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int NFE_JUMBO_RX_RING_COUNT ;
 int NFE_JUMBO_SUP ;
 int NFE_LOCK_ASSERT (struct nfe_softc*) ;
 int NFE_RX_CTL ;
 int NFE_RX_RING_COUNT ;
 int NFE_TX_CTL ;
 int NFE_WRITE (struct nfe_softc*,int ,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 struct nfe_softc* if_getsoftc (int ) ;
 int if_setdrvflagbits (int ,int ,int) ;
 int m_freem (int *) ;
 int nfe_disable_intr (struct nfe_softc*) ;
 int nfe_stats_update (struct nfe_softc*) ;

__attribute__((used)) static void
nfe_stop(if_t ifp)
{
 struct nfe_softc *sc = if_getsoftc(ifp);
 struct nfe_rx_ring *rx_ring;
 struct nfe_jrx_ring *jrx_ring;
 struct nfe_tx_ring *tx_ring;
 struct nfe_rx_data *rdata;
 struct nfe_tx_data *tdata;
 int i;

 NFE_LOCK_ASSERT(sc);

 sc->nfe_watchdog_timer = 0;
 if_setdrvflagbits(ifp, 0, (IFF_DRV_RUNNING | IFF_DRV_OACTIVE));

 callout_stop(&sc->nfe_stat_ch);


 NFE_WRITE(sc, NFE_TX_CTL, 0);


 NFE_WRITE(sc, NFE_RX_CTL, 0);


 nfe_disable_intr(sc);

 sc->nfe_link = 0;


 rx_ring = &sc->rxq;
 for (i = 0; i < NFE_RX_RING_COUNT; i++) {
  rdata = &rx_ring->data[i];
  if (rdata->m != ((void*)0)) {
   bus_dmamap_sync(rx_ring->rx_data_tag,
       rdata->rx_data_map, BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(rx_ring->rx_data_tag,
       rdata->rx_data_map);
   m_freem(rdata->m);
   rdata->m = ((void*)0);
  }
 }

 if ((sc->nfe_flags & NFE_JUMBO_SUP) != 0) {
  jrx_ring = &sc->jrxq;
  for (i = 0; i < NFE_JUMBO_RX_RING_COUNT; i++) {
   rdata = &jrx_ring->jdata[i];
   if (rdata->m != ((void*)0)) {
    bus_dmamap_sync(jrx_ring->jrx_data_tag,
        rdata->rx_data_map, BUS_DMASYNC_POSTREAD);
    bus_dmamap_unload(jrx_ring->jrx_data_tag,
        rdata->rx_data_map);
    m_freem(rdata->m);
    rdata->m = ((void*)0);
   }
  }
 }

 tx_ring = &sc->txq;
 for (i = 0; i < NFE_RX_RING_COUNT; i++) {
  tdata = &tx_ring->data[i];
  if (tdata->m != ((void*)0)) {
   bus_dmamap_sync(tx_ring->tx_data_tag,
       tdata->tx_data_map, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(tx_ring->tx_data_tag,
       tdata->tx_data_map);
   m_freem(tdata->m);
   tdata->m = ((void*)0);
  }
 }

 nfe_stats_update(sc);
}

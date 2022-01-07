
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int ste_tx_tag; struct ste_chain* ste_tx_chain; int ste_rx_tag; struct ste_chain_onefrag* ste_rx_chain; } ;
struct ste_softc {TYPE_1__ ste_cdata; int ste_dev; scalar_t__ ste_timer; int ste_callout; struct ifnet* ste_ifp; } ;
struct ste_chain_onefrag {int * ste_mbuf; int ste_map; } ;
struct ste_chain {int * ste_mbuf; int ste_map; } ;
struct ifnet {int if_drv_flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_2 (struct ste_softc*,int ) ;
 int CSR_READ_4 (struct ste_softc*,int ) ;
 int CSR_WRITE_1 (struct ste_softc*,int ,int ) ;
 int CSR_WRITE_2 (struct ste_softc*,int ,int) ;
 int CSR_WRITE_4 (struct ste_softc*,int ,int) ;
 int DELAY (int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int STE_COUNTDOWN ;
 int STE_DMACTL ;
 int STE_DMACTL_RXDMA_STALL ;
 int STE_DMACTL_TXDMA_STALL ;
 int STE_IMR ;
 int STE_ISR_ACK ;
 int STE_LOCK_ASSERT (struct ste_softc*) ;
 int STE_MACCTL1 ;
 int STE_MACCTL1_RX_DISABLE ;
 int STE_MACCTL1_STATS_DISABLE ;
 int STE_MACCTL1_TX_DISABLE ;
 int STE_RX_DMALIST_PTR ;
 int STE_RX_DMAPOLL_PERIOD ;
 int STE_RX_LIST_CNT ;
 int STE_TIMEOUT ;
 int STE_TX_DMALIST_PTR ;
 int STE_TX_DMAPOLL_PERIOD ;
 int STE_TX_LIST_CNT ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int device_printf (int ,char*) ;
 int m_freem (int *) ;
 int ste_stats_update (struct ste_softc*) ;
 int ste_wait (struct ste_softc*) ;

__attribute__((used)) static void
ste_stop(struct ste_softc *sc)
{
 struct ifnet *ifp;
 struct ste_chain_onefrag *cur_rx;
 struct ste_chain *cur_tx;
 uint32_t val;
 int i;

 STE_LOCK_ASSERT(sc);
 ifp = sc->ste_ifp;

 callout_stop(&sc->ste_callout);
 sc->ste_timer = 0;
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING|IFF_DRV_OACTIVE);

 CSR_WRITE_2(sc, STE_IMR, 0);
 CSR_WRITE_2(sc, STE_COUNTDOWN, 0);

 val = CSR_READ_4(sc, STE_DMACTL);
 val |= STE_DMACTL_TXDMA_STALL | STE_DMACTL_RXDMA_STALL;
 CSR_WRITE_4(sc, STE_DMACTL, val);
 ste_wait(sc);

 CSR_WRITE_1(sc, STE_RX_DMAPOLL_PERIOD, 0);
 CSR_WRITE_1(sc, STE_TX_DMAPOLL_PERIOD, 0);

 CSR_WRITE_4(sc, STE_RX_DMALIST_PTR, 0);
 CSR_WRITE_4(sc, STE_TX_DMALIST_PTR, 0);

 val = CSR_READ_2(sc, STE_MACCTL1);
 val |= STE_MACCTL1_TX_DISABLE | STE_MACCTL1_RX_DISABLE |
     STE_MACCTL1_STATS_DISABLE;
 CSR_WRITE_2(sc, STE_MACCTL1, val);
 for (i = 0; i < STE_TIMEOUT; i++) {
  DELAY(10);
  if ((CSR_READ_2(sc, STE_MACCTL1) & (STE_MACCTL1_TX_DISABLE |
      STE_MACCTL1_RX_DISABLE | STE_MACCTL1_STATS_DISABLE)) == 0)
   break;
 }
 if (i == STE_TIMEOUT)
  device_printf(sc->ste_dev, "Stopping MAC timed out\n");

 CSR_READ_2(sc, STE_ISR_ACK);
 ste_stats_update(sc);

 for (i = 0; i < STE_RX_LIST_CNT; i++) {
  cur_rx = &sc->ste_cdata.ste_rx_chain[i];
  if (cur_rx->ste_mbuf != ((void*)0)) {
   bus_dmamap_sync(sc->ste_cdata.ste_rx_tag,
       cur_rx->ste_map, BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->ste_cdata.ste_rx_tag,
       cur_rx->ste_map);
   m_freem(cur_rx->ste_mbuf);
   cur_rx->ste_mbuf = ((void*)0);
  }
 }

 for (i = 0; i < STE_TX_LIST_CNT; i++) {
  cur_tx = &sc->ste_cdata.ste_tx_chain[i];
  if (cur_tx->ste_mbuf != ((void*)0)) {
   bus_dmamap_sync(sc->ste_cdata.ste_tx_tag,
       cur_tx->ste_map, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->ste_cdata.ste_tx_tag,
       cur_tx->ste_map);
   m_freem(cur_tx->ste_mbuf);
   cur_tx->ste_mbuf = ((void*)0);
  }
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rl_txdesc {int * tx_m; int tx_dmamap; } ;
struct TYPE_2__ {int rl_tx_desc_cnt; int rl_rx_desc_cnt; int rl_jrx_mtag; struct rl_rxdesc* rl_jrx_desc; int rl_rx_mtag; struct rl_rxdesc* rl_rx_desc; int rl_tx_mtag; struct rl_txdesc* rl_tx_desc; } ;
struct rl_softc {int rl_flags; TYPE_1__ rl_ldata; int * rl_tail; int * rl_head; int rl_dev; int rl_txstart; int rl_stat_callout; scalar_t__ rl_watchdog_timer; struct ifnet* rl_ifp; } ;
struct rl_rxdesc {int * rx_m; int rx_dmamap; } ;
struct ifnet {int if_drv_flags; } ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int CSR_READ_1 (struct rl_softc*,int ) ;
 int CSR_READ_4 (struct rl_softc*,int ) ;
 int CSR_WRITE_1 (struct rl_softc*,int ,int) ;
 int CSR_WRITE_2 (struct rl_softc*,int ,int) ;
 int CSR_WRITE_4 (struct rl_softc*,int ,int) ;
 int DELAY (int) ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int RL_CMD_RX_ENB ;
 int RL_CMD_STOPREQ ;
 int RL_CMD_TX_ENB ;
 int RL_COMMAND ;
 int RL_FLAG_8168G_PLUS ;
 int RL_FLAG_CMDSTOP ;
 int RL_FLAG_CMDSTOP_WAIT_TXQ ;
 int RL_FLAG_JUMBOV2 ;
 int RL_FLAG_WAIT_TXPOLL ;
 int RL_IMR ;
 int RL_ISR ;
 int RL_LOCK_ASSERT (struct rl_softc*) ;
 int RL_MISC ;
 int RL_RXCFG ;
 int RL_RXCFG_RX_ALLPHYS ;
 int RL_RXCFG_RX_BROAD ;
 int RL_RXCFG_RX_INDIV ;
 int RL_RXCFG_RX_MULTI ;
 int RL_TIMEOUT ;
 int RL_TXCFG ;
 int RL_TXCFG_QUEUE_EMPTY ;
 int RL_TXSTART_START ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int device_printf (int ,char*) ;
 int m_freem (int *) ;

__attribute__((used)) static void
re_stop(struct rl_softc *sc)
{
 int i;
 struct ifnet *ifp;
 struct rl_txdesc *txd;
 struct rl_rxdesc *rxd;

 RL_LOCK_ASSERT(sc);

 ifp = sc->rl_ifp;

 sc->rl_watchdog_timer = 0;
 callout_stop(&sc->rl_stat_callout);
 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);







 CSR_WRITE_4(sc, RL_RXCFG, CSR_READ_4(sc, RL_RXCFG) &
     ~(RL_RXCFG_RX_ALLPHYS | RL_RXCFG_RX_INDIV | RL_RXCFG_RX_MULTI |
     RL_RXCFG_RX_BROAD));

 if ((sc->rl_flags & RL_FLAG_8168G_PLUS) != 0) {

  CSR_WRITE_4(sc, RL_MISC, CSR_READ_4(sc, RL_MISC) |
      0x00080000);
 }

 if ((sc->rl_flags & RL_FLAG_WAIT_TXPOLL) != 0) {
  for (i = RL_TIMEOUT; i > 0; i--) {
   if ((CSR_READ_1(sc, sc->rl_txstart) &
       RL_TXSTART_START) == 0)
    break;
   DELAY(20);
  }
  if (i == 0)
   device_printf(sc->rl_dev,
       "stopping TX poll timed out!\n");
  CSR_WRITE_1(sc, RL_COMMAND, 0x00);
 } else if ((sc->rl_flags & RL_FLAG_CMDSTOP) != 0) {
  CSR_WRITE_1(sc, RL_COMMAND, RL_CMD_STOPREQ | RL_CMD_TX_ENB |
      RL_CMD_RX_ENB);
  if ((sc->rl_flags & RL_FLAG_CMDSTOP_WAIT_TXQ) != 0) {
   for (i = RL_TIMEOUT; i > 0; i--) {
    if ((CSR_READ_4(sc, RL_TXCFG) &
        RL_TXCFG_QUEUE_EMPTY) != 0)
     break;
    DELAY(100);
   }
   if (i == 0)
    device_printf(sc->rl_dev,
       "stopping TXQ timed out!\n");
  }
 } else
  CSR_WRITE_1(sc, RL_COMMAND, 0x00);
 DELAY(1000);
 CSR_WRITE_2(sc, RL_IMR, 0x0000);
 CSR_WRITE_2(sc, RL_ISR, 0xFFFF);

 if (sc->rl_head != ((void*)0)) {
  m_freem(sc->rl_head);
  sc->rl_head = sc->rl_tail = ((void*)0);
 }


 for (i = 0; i < sc->rl_ldata.rl_tx_desc_cnt; i++) {
  txd = &sc->rl_ldata.rl_tx_desc[i];
  if (txd->tx_m != ((void*)0)) {
   bus_dmamap_sync(sc->rl_ldata.rl_tx_mtag,
       txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc->rl_ldata.rl_tx_mtag,
       txd->tx_dmamap);
   m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
  }
 }


 for (i = 0; i < sc->rl_ldata.rl_rx_desc_cnt; i++) {
  rxd = &sc->rl_ldata.rl_rx_desc[i];
  if (rxd->rx_m != ((void*)0)) {
   bus_dmamap_sync(sc->rl_ldata.rl_rx_mtag,
       rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc->rl_ldata.rl_rx_mtag,
       rxd->rx_dmamap);
   m_freem(rxd->rx_m);
   rxd->rx_m = ((void*)0);
  }
 }

 if ((sc->rl_flags & RL_FLAG_JUMBOV2) != 0) {
  for (i = 0; i < sc->rl_ldata.rl_rx_desc_cnt; i++) {
   rxd = &sc->rl_ldata.rl_jrx_desc[i];
   if (rxd->rx_m != ((void*)0)) {
    bus_dmamap_sync(sc->rl_ldata.rl_jrx_mtag,
        rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
    bus_dmamap_unload(sc->rl_ldata.rl_jrx_mtag,
        rxd->rx_dmamap);
    m_freem(rxd->rx_m);
    rxd->rx_m = ((void*)0);
   }
  }
 }
}

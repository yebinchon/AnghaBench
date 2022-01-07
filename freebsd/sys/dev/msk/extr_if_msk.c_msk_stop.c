
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct msk_txdesc {int * tx_m; int tx_dmamap; } ;
struct msk_softc {int msk_intrmask; int msk_intrhwemask; } ;
struct msk_rxdesc {int * rx_m; int rx_dmamap; } ;
struct TYPE_2__ {int msk_tx_tag; struct msk_txdesc* msk_txdesc; int msk_jumbo_rx_tag; struct msk_rxdesc* msk_jumbo_rxdesc; int msk_rx_tag; struct msk_rxdesc* msk_rxdesc; } ;
struct msk_if_softc {scalar_t__ msk_port; int msk_flags; TYPE_1__ msk_cdata; int msk_rxq; int msk_if_dev; int msk_txq; scalar_t__ msk_watchdog_timer; int msk_tick_ch; struct ifnet* msk_ifp; struct msk_softc* msk_softc; } ;
struct ifnet {int if_drv_flags; } ;


 int B0_HWE_IMSK ;
 int B0_IMSK ;
 int BMU_FIFO_RST ;
 int BMU_IDLE ;
 int BMU_RST_SET ;
 int BMU_STOP ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 scalar_t__ CSR_READ_1 (struct msk_softc*,int ) ;
 int CSR_READ_4 (struct msk_softc*,int ) ;
 int CSR_WRITE_1 (struct msk_softc*,int ,int) ;
 int CSR_WRITE_4 (struct msk_softc*,int ,int) ;
 int DELAY (int) ;
 int GMAC_CTRL ;
 int GMAC_IRQ_MSK ;
 int GMAC_READ_2 (struct msk_softc*,scalar_t__,int ) ;
 int GMAC_WRITE_2 (struct msk_softc*,scalar_t__,int ,int) ;
 int GMC_PAUSE_OFF ;
 int GMF_RST_SET ;
 int GM_GPCR_RX_ENA ;
 int GM_GPCR_TX_ENA ;
 int GM_GP_CTRL ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int MR_ADDR (scalar_t__,int ) ;
 int MSK_FLAG_LINK ;
 int MSK_IF_LOCK_ASSERT (struct msk_if_softc*) ;
 int MSK_JUMBO_RX_RING_CNT ;
 scalar_t__ MSK_PORT_A ;
 int MSK_RX_RING_CNT ;
 int MSK_TIMEOUT ;
 int MSK_TX_RING_CNT ;
 int PHY_ADDR_MARV ;
 int PHY_MARV_INT_MASK ;
 int PREF_UNIT_CTRL_REG ;
 int PREF_UNIT_RST_SET ;
 int Q_ADDR (int ,int ) ;
 int Q_CSR ;
 int Q_RL ;
 int Q_RSL ;
 int RB_ADDR (int ,int ) ;
 int RB_CTRL ;
 int RB_DIS_OP_MD ;
 int RB_RST_SET ;
 int RX_GMF_CTRL_T ;
 int TXA_CTRL ;
 int TXA_DIS_ARB ;
 int TX_GMF_CTRL_T ;
 int Y2_HWE_L1_MASK ;
 int Y2_HWE_L2_MASK ;
 int Y2_IS_PORT_A ;
 int Y2_IS_PORT_B ;
 int Y2_PREF_Q_ADDR (int ,int ) ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int callout_stop (int *) ;
 int device_printf (int ,char*) ;
 int m_freem (int *) ;
 int msk_phy_writereg (struct msk_if_softc*,int ,int ,int ) ;
 int msk_stats_update (struct msk_if_softc*) ;

__attribute__((used)) static void
msk_stop(struct msk_if_softc *sc_if)
{
 struct msk_softc *sc;
 struct msk_txdesc *txd;
 struct msk_rxdesc *rxd;
 struct msk_rxdesc *jrxd;
 struct ifnet *ifp;
 uint32_t val;
 int i;

 MSK_IF_LOCK_ASSERT(sc_if);
 sc = sc_if->msk_softc;
 ifp = sc_if->msk_ifp;

 callout_stop(&sc_if->msk_tick_ch);
 sc_if->msk_watchdog_timer = 0;


 if (sc_if->msk_port == MSK_PORT_A) {
  sc->msk_intrmask &= ~Y2_IS_PORT_A;
  sc->msk_intrhwemask &= ~Y2_HWE_L1_MASK;
 } else {
  sc->msk_intrmask &= ~Y2_IS_PORT_B;
  sc->msk_intrhwemask &= ~Y2_HWE_L2_MASK;
 }
 CSR_WRITE_4(sc, B0_HWE_IMSK, sc->msk_intrhwemask);
 CSR_READ_4(sc, B0_HWE_IMSK);
 CSR_WRITE_4(sc, B0_IMSK, sc->msk_intrmask);
 CSR_READ_4(sc, B0_IMSK);


 val = GMAC_READ_2(sc, sc_if->msk_port, GM_GP_CTRL);
 val &= ~(GM_GPCR_RX_ENA | GM_GPCR_TX_ENA);
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_GP_CTRL, val);

 GMAC_READ_2(sc, sc_if->msk_port, GM_GP_CTRL);

 msk_stats_update(sc_if);


 CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_txq, Q_CSR), BMU_STOP);
 val = CSR_READ_4(sc, Q_ADDR(sc_if->msk_txq, Q_CSR));
 for (i = 0; i < MSK_TIMEOUT; i++) {
  if ((val & (BMU_STOP | BMU_IDLE)) == 0) {
   CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_txq, Q_CSR),
       BMU_STOP);
   val = CSR_READ_4(sc, Q_ADDR(sc_if->msk_txq, Q_CSR));
  } else
   break;
  DELAY(1);
 }
 if (i == MSK_TIMEOUT)
  device_printf(sc_if->msk_if_dev, "Tx BMU stop failed\n");
 CSR_WRITE_1(sc, RB_ADDR(sc_if->msk_txq, RB_CTRL),
     RB_RST_SET | RB_DIS_OP_MD);


 CSR_WRITE_1(sc, MR_ADDR(sc_if->msk_port, GMAC_IRQ_MSK), 0);

 msk_phy_writereg(sc_if, PHY_ADDR_MARV, PHY_MARV_INT_MASK, 0);


 CSR_WRITE_1(sc, MR_ADDR(sc_if->msk_port, TXA_CTRL), TXA_DIS_ARB);


 CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_txq, Q_CSR),
     BMU_RST_SET | BMU_FIFO_RST);


 CSR_WRITE_4(sc, Y2_PREF_Q_ADDR(sc_if->msk_txq, PREF_UNIT_CTRL_REG),
     PREF_UNIT_RST_SET);


 CSR_WRITE_1(sc, RB_ADDR(sc_if->msk_txq, RB_CTRL), RB_RST_SET);


 CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, TX_GMF_CTRL_T), GMF_RST_SET);

 CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, GMAC_CTRL), GMC_PAUSE_OFF);
 CSR_WRITE_1(sc, RB_ADDR(sc_if->msk_rxq, RB_CTRL), RB_DIS_OP_MD);
 for (i = 0; i < MSK_TIMEOUT; i++) {
  if (CSR_READ_1(sc, RB_ADDR(sc_if->msk_rxq, Q_RSL)) ==
      CSR_READ_1(sc, RB_ADDR(sc_if->msk_rxq, Q_RL)))
   break;
  DELAY(1);
 }
 if (i == MSK_TIMEOUT)
  device_printf(sc_if->msk_if_dev, "Rx BMU stop failed\n");
 CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_rxq, Q_CSR),
     BMU_RST_SET | BMU_FIFO_RST);

 CSR_WRITE_4(sc, Y2_PREF_Q_ADDR(sc_if->msk_rxq, PREF_UNIT_CTRL_REG),
     PREF_UNIT_RST_SET);

 CSR_WRITE_1(sc, RB_ADDR(sc_if->msk_rxq, RB_CTRL), RB_RST_SET);

 CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, RX_GMF_CTRL_T), GMF_RST_SET);


 for (i = 0; i < MSK_RX_RING_CNT; i++) {
  rxd = &sc_if->msk_cdata.msk_rxdesc[i];
  if (rxd->rx_m != ((void*)0)) {
   bus_dmamap_sync(sc_if->msk_cdata.msk_rx_tag,
       rxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc_if->msk_cdata.msk_rx_tag,
       rxd->rx_dmamap);
   m_freem(rxd->rx_m);
   rxd->rx_m = ((void*)0);
  }
 }
 for (i = 0; i < MSK_JUMBO_RX_RING_CNT; i++) {
  jrxd = &sc_if->msk_cdata.msk_jumbo_rxdesc[i];
  if (jrxd->rx_m != ((void*)0)) {
   bus_dmamap_sync(sc_if->msk_cdata.msk_jumbo_rx_tag,
       jrxd->rx_dmamap, BUS_DMASYNC_POSTREAD);
   bus_dmamap_unload(sc_if->msk_cdata.msk_jumbo_rx_tag,
       jrxd->rx_dmamap);
   m_freem(jrxd->rx_m);
   jrxd->rx_m = ((void*)0);
  }
 }
 for (i = 0; i < MSK_TX_RING_CNT; i++) {
  txd = &sc_if->msk_cdata.msk_txdesc[i];
  if (txd->tx_m != ((void*)0)) {
   bus_dmamap_sync(sc_if->msk_cdata.msk_tx_tag,
       txd->tx_dmamap, BUS_DMASYNC_POSTWRITE);
   bus_dmamap_unload(sc_if->msk_cdata.msk_tx_tag,
       txd->tx_dmamap);
   m_freem(txd->tx_m);
   txd->tx_m = ((void*)0);
  }
 }




 ifp->if_drv_flags &= ~(IFF_DRV_RUNNING | IFF_DRV_OACTIVE);
 sc_if->msk_flags &= ~MSK_FLAG_LINK;
}

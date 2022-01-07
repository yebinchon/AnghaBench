
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct msk_softc {int msk_hw_id; scalar_t__ msk_hw_rev; int msk_intrmask; int msk_intrhwemask; scalar_t__ msk_int_holdoff; } ;
struct TYPE_2__ {int msk_rx_ring_paddr; int msk_jumbo_rx_ring_paddr; int msk_tx_ring_paddr; } ;
struct msk_if_softc {scalar_t__ msk_framesize; int msk_flags; scalar_t__ msk_port; int msk_tick_ch; int msk_if_dev; TYPE_1__ msk_rdata; int msk_rxq; int msk_txq; int msk_txsq; int msk_miibus; struct msk_softc* msk_softc; struct ifnet* msk_ifp; } ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; scalar_t__ if_mtu; int if_hwassist; int if_capenable; } ;


 int B0_HWE_IMSK ;
 int B0_IMSK ;
 int B2_IRQM_CTRL ;
 int B2_IRQM_INI ;
 int B2_IRQM_MSK ;
 int B2_IRQM_VAL ;
 int BMU_CLR_RESET ;
 int BMU_DIS_RX_CHKSUM ;
 int BMU_DIS_RX_RSS_HASH ;
 int BMU_ENA_RX_CHKSUM ;
 int BMU_FIFO_OP_ON ;
 int BMU_OPER_INIT ;


 int CHIP_ID_YUKON_FE_P ;
 int CHIP_ID_YUKON_SUPR ;
 int CHIP_ID_YUKON_XL ;
 scalar_t__ CHIP_REV_YU_EC_U_A0 ;
 scalar_t__ CHIP_REV_YU_EC_U_A1 ;
 scalar_t__ CHIP_REV_YU_EX_B0 ;
 scalar_t__ CHIP_REV_YU_FE_P_A0 ;
 int CSR_READ_1 (struct msk_softc*,int ) ;
 int CSR_READ_4 (struct msk_softc*,int ) ;
 int CSR_WRITE_1 (struct msk_softc*,int ,int) ;
 int CSR_WRITE_2 (struct msk_softc*,int ,int) ;
 int CSR_WRITE_4 (struct msk_softc*,int ,int) ;
 int CSUM_TSO ;
 int DATA_BLIND_DEF ;
 int DATA_BLIND_VAL (int ) ;
 scalar_t__ ETHERMTU ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int F_M_RX_RAM_DIS ;
 int F_TX_CHK_AUTO_OFF ;
 int GMAC_CTRL ;
 int GMAC_IRQ_SRC ;
 int GMAC_WRITE_2 (struct msk_softc*,scalar_t__,int ,int) ;
 int GMC_BYP_MACSECRX_ON ;
 int GMC_BYP_MACSECTX_ON ;
 int GMC_BYP_RETR_ON ;
 int GMC_F_LOOPB_OFF ;
 int GMC_RST_CLR ;
 int GMC_RST_SET ;
 int GMF_OPER_ON ;
 int GMF_RST_CLR ;
 int GMF_RST_SET ;
 int GMF_RX_F_FL_ON ;
 int GMF_RX_MACSEC_FLUSH_OFF ;
 int GMF_RX_OVER_ON ;
 int GMR_FS_ANY_ERR ;
 int GM_GP_CTRL ;
 int GM_RXCR_CRC_DIS ;
 int GM_RX_CTRL ;
 int GM_RX_IRQ_MSK ;
 int GM_SERIAL_MODE ;
 int GM_SMOD_JUMBO_ENA ;
 int GM_SMOD_VLAN_ENA ;
 int GM_SRC_ADDR_1H ;
 int GM_SRC_ADDR_1L ;
 int GM_SRC_ADDR_1M ;
 int GM_SRC_ADDR_2H ;
 int GM_SRC_ADDR_2L ;
 int GM_SRC_ADDR_2M ;
 int GM_TR_IRQ_MSK ;
 int GM_TX_CTRL ;
 int GM_TX_FLOW_CTRL ;
 int GM_TX_IRQ_MSK ;
 int GM_TX_PARAM ;
 int IFCAP_RXCSUM ;
 int IFCAP_TSO4 ;
 int IFCAP_TXCSUM ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int* IF_LLADDR (struct ifnet*) ;
 int IPG_DATA_DEF ;
 int IPG_DATA_VAL (int ) ;
 scalar_t__ MCLBYTES ;
 int MR_ADDR (scalar_t__,int ) ;
 int MSK_BMU_RX_WM ;
 int MSK_BMU_TX_WM ;
 int MSK_CSUM_FEATURES ;
 int MSK_ECU_LLPP ;
 int MSK_ECU_TXFF_LEV ;
 int MSK_ECU_ULPP ;
 int MSK_FLAG_DESCV2 ;
 int MSK_FLAG_JUMBO_NOCSUM ;
 int MSK_FLAG_LINK ;
 int MSK_FLAG_RAMBUF ;
 int MSK_IF_LOCK_ASSERT (struct msk_if_softc*) ;
 scalar_t__ MSK_JUMBO_RX_RING_CNT ;
 scalar_t__ MSK_PORT_A ;
 scalar_t__ MSK_RX_BUF_ALIGN ;
 scalar_t__ MSK_RX_RING_CNT ;
 scalar_t__ MSK_TX_RING_CNT ;
 int MSK_USECS (struct msk_softc*,scalar_t__) ;
 int Q_ADDR (int ,int ) ;
 int Q_AL ;
 int Q_CSR ;
 int Q_F ;
 int Q_WM ;
 int RB_ADDR (int ,int ) ;
 int RB_CTRL ;
 int RB_RST_SET ;
 int RX_GMF_CTRL_T ;
 int RX_GMF_FL_MSK ;
 int RX_GMF_FL_THR ;
 int RX_GMF_FL_THR_DEF ;
 int RX_GMF_LP_THR ;
 int RX_GMF_UP_THR ;
 int TIM_START ;
 int TXA_CTRL ;
 int TXA_DIS_ALLOC ;
 int TXA_DIS_FSYNC ;
 int TXA_ENA_ARB ;
 int TXA_STOP_RC ;
 int TX_BACK_OFF_LIM (int ) ;
 int TX_BOF_LIM_DEF ;
 int TX_COL_DEF ;
 int TX_COL_THR (int ) ;
 int TX_GMF_CTRL_T ;
 int TX_GMF_EA ;
 int TX_IPG_JAM_DATA (int ) ;
 int TX_IPG_JAM_DEF ;
 int TX_JAM_IPG_DEF ;
 int TX_JAM_IPG_VAL (int ) ;
 int TX_JAM_LEN_DEF ;
 int TX_JAM_LEN_VAL (int ) ;
 int Y2_HWE_L1_MASK ;
 int Y2_HWE_L2_MASK ;
 int Y2_IS_PORT_A ;
 int Y2_IS_PORT_B ;
 int callout_reset (int *,int ,int ,struct msk_if_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;
 int msk_init_jumbo_rx_ring (struct msk_if_softc*) ;
 int msk_init_rx_ring (struct msk_if_softc*) ;
 int msk_init_tx_ring (struct msk_if_softc*) ;
 int msk_rxfilter (struct msk_if_softc*) ;
 int msk_set_prefetch (struct msk_softc*,int ,int ,scalar_t__) ;
 int msk_set_rambuffer (struct msk_if_softc*) ;
 int msk_set_tx_stfwd (struct msk_if_softc*) ;
 int msk_setvlan (struct msk_if_softc*,struct ifnet*) ;
 int msk_stats_clear (struct msk_if_softc*) ;
 int msk_stop (struct msk_if_softc*) ;
 int msk_tick ;

__attribute__((used)) static void
msk_init_locked(struct msk_if_softc *sc_if)
{
 struct msk_softc *sc;
 struct ifnet *ifp;
 struct mii_data *mii;
 uint8_t *eaddr;
 uint16_t gmac;
 uint32_t reg;
 int error;

 MSK_IF_LOCK_ASSERT(sc_if);

 ifp = sc_if->msk_ifp;
 sc = sc_if->msk_softc;
 mii = device_get_softc(sc_if->msk_miibus);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;

 error = 0;

 msk_stop(sc_if);

 if (ifp->if_mtu < ETHERMTU)
  sc_if->msk_framesize = ETHERMTU;
 else
  sc_if->msk_framesize = ifp->if_mtu;
 sc_if->msk_framesize += ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN;
 if (ifp->if_mtu > ETHERMTU &&
     (sc_if->msk_flags & MSK_FLAG_JUMBO_NOCSUM) != 0) {
  ifp->if_hwassist &= ~(MSK_CSUM_FEATURES | CSUM_TSO);
  ifp->if_capenable &= ~(IFCAP_TSO4 | IFCAP_TXCSUM);
 }


 CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, GMAC_CTRL), GMC_RST_SET);
 CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, GMAC_CTRL), GMC_RST_CLR);
 CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, GMAC_CTRL), GMC_F_LOOPB_OFF);
 if (sc->msk_hw_id == 128 ||
     sc->msk_hw_id == CHIP_ID_YUKON_SUPR)
  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, GMAC_CTRL),
      GMC_BYP_MACSECRX_ON | GMC_BYP_MACSECTX_ON |
      GMC_BYP_RETR_ON);





 GMAC_WRITE_2(sc, sc_if->msk_port, GM_GP_CTRL, 0);


 CSR_READ_1(sc, MR_ADDR(sc_if->msk_port, GMAC_IRQ_SRC));


 msk_stats_clear(sc_if);


 GMAC_WRITE_2(sc, sc_if->msk_port, GM_RX_CTRL, GM_RXCR_CRC_DIS);


 GMAC_WRITE_2(sc, sc_if->msk_port, GM_TX_CTRL, TX_COL_THR(TX_COL_DEF));


 GMAC_WRITE_2(sc, sc_if->msk_port, GM_TX_FLOW_CTRL, 0xffff);


 GMAC_WRITE_2(sc, sc_if->msk_port, GM_TX_PARAM,
     TX_JAM_LEN_VAL(TX_JAM_LEN_DEF) | TX_JAM_IPG_VAL(TX_JAM_IPG_DEF) |
     TX_IPG_JAM_DATA(TX_IPG_JAM_DEF) | TX_BACK_OFF_LIM(TX_BOF_LIM_DEF));

 gmac = DATA_BLIND_VAL(DATA_BLIND_DEF) |
     GM_SMOD_VLAN_ENA | IPG_DATA_VAL(IPG_DATA_DEF);

 if (ifp->if_mtu > ETHERMTU)
  gmac |= GM_SMOD_JUMBO_ENA;
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_SERIAL_MODE, gmac);


 eaddr = IF_LLADDR(ifp);
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_SRC_ADDR_1L,
     eaddr[0] | (eaddr[1] << 8));
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_SRC_ADDR_1M,
     eaddr[2] | (eaddr[3] << 8));
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_SRC_ADDR_1H,
     eaddr[4] | (eaddr[5] << 8));
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_SRC_ADDR_2L,
     eaddr[0] | (eaddr[1] << 8));
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_SRC_ADDR_2M,
     eaddr[2] | (eaddr[3] << 8));
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_SRC_ADDR_2H,
     eaddr[4] | (eaddr[5] << 8));


 GMAC_WRITE_2(sc, sc_if->msk_port, GM_TX_IRQ_MSK, 0);
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_RX_IRQ_MSK, 0);
 GMAC_WRITE_2(sc, sc_if->msk_port, GM_TR_IRQ_MSK, 0);


 CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, RX_GMF_CTRL_T), GMF_RST_SET);
 CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, RX_GMF_CTRL_T), GMF_RST_CLR);
 reg = GMF_OPER_ON | GMF_RX_F_FL_ON;
 if (sc->msk_hw_id == CHIP_ID_YUKON_FE_P ||
     sc->msk_hw_id == 128)
  reg |= GMF_RX_OVER_ON;
 CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, RX_GMF_CTRL_T), reg);


 msk_rxfilter(sc_if);

 if (sc->msk_hw_id == CHIP_ID_YUKON_XL) {

  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, RX_GMF_FL_MSK), 0);
 } else {

  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, RX_GMF_FL_MSK),
      GMR_FS_ANY_ERR);
 }





 reg = RX_GMF_FL_THR_DEF + 1;

 if (sc->msk_hw_id == CHIP_ID_YUKON_FE_P &&
     sc->msk_hw_rev == CHIP_REV_YU_FE_P_A0)
  reg = 0x178;
 CSR_WRITE_2(sc, MR_ADDR(sc_if->msk_port, RX_GMF_FL_THR), reg);


 CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, TX_GMF_CTRL_T), GMF_RST_SET);
 CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, TX_GMF_CTRL_T), GMF_RST_CLR);
 CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, TX_GMF_CTRL_T), GMF_OPER_ON);


 msk_setvlan(sc_if, ifp);

 if ((sc_if->msk_flags & MSK_FLAG_RAMBUF) == 0) {

  CSR_WRITE_2(sc, MR_ADDR(sc_if->msk_port, RX_GMF_LP_THR),
      MSK_ECU_LLPP);
  CSR_WRITE_2(sc, MR_ADDR(sc_if->msk_port, RX_GMF_UP_THR),
      MSK_ECU_ULPP);

  msk_set_tx_stfwd(sc_if);
 }

 if (sc->msk_hw_id == CHIP_ID_YUKON_FE_P &&
     sc->msk_hw_rev == CHIP_REV_YU_FE_P_A0) {

  reg = CSR_READ_4(sc, MR_ADDR(sc_if->msk_port, TX_GMF_EA));
  reg &= ~0x03;
  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, TX_GMF_EA), reg);
 }





 CSR_WRITE_1(sc, MR_ADDR(sc_if->msk_port, TXA_CTRL),
     TXA_DIS_FSYNC | TXA_DIS_ALLOC | TXA_STOP_RC);

 CSR_WRITE_1(sc, MR_ADDR(sc_if->msk_port, TXA_CTRL), TXA_ENA_ARB);


 msk_set_rambuffer(sc_if);


 CSR_WRITE_1(sc, RB_ADDR(sc_if->msk_txsq, RB_CTRL), RB_RST_SET);


 CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_txq, Q_CSR), BMU_CLR_RESET);
 CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_txq, Q_CSR), BMU_OPER_INIT);
 CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_txq, Q_CSR), BMU_FIFO_OP_ON);
 CSR_WRITE_2(sc, Q_ADDR(sc_if->msk_txq, Q_WM), MSK_BMU_TX_WM);
 switch (sc->msk_hw_id) {
 case 129:
  if (sc->msk_hw_rev == CHIP_REV_YU_EC_U_A0) {

   CSR_WRITE_2(sc, Q_ADDR(sc_if->msk_txq, Q_AL),
       MSK_ECU_TXFF_LEV);
  }
  break;
 case 128:




  if (sc->msk_hw_rev == CHIP_REV_YU_EX_B0)
   CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_txq, Q_F),
       F_TX_CHK_AUTO_OFF);
  break;
 }


 CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_rxq, Q_CSR), BMU_CLR_RESET);
 CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_rxq, Q_CSR), BMU_OPER_INIT);
 CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_rxq, Q_CSR), BMU_FIFO_OP_ON);
 CSR_WRITE_2(sc, Q_ADDR(sc_if->msk_rxq, Q_WM), MSK_BMU_RX_WM);
        if (sc->msk_hw_id == 129 &&
     sc->msk_hw_rev >= CHIP_REV_YU_EC_U_A1) {

                CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_rxq, Q_F), F_M_RX_RAM_DIS);
 }

 msk_set_prefetch(sc, sc_if->msk_txq,
     sc_if->msk_rdata.msk_tx_ring_paddr, MSK_TX_RING_CNT - 1);
 msk_init_tx_ring(sc_if);


 reg = BMU_DIS_RX_RSS_HASH;
 if ((sc_if->msk_flags & MSK_FLAG_DESCV2) == 0 &&
     (ifp->if_capenable & IFCAP_RXCSUM) != 0)
  reg |= BMU_ENA_RX_CHKSUM;
 else
  reg |= BMU_DIS_RX_CHKSUM;
 CSR_WRITE_4(sc, Q_ADDR(sc_if->msk_rxq, Q_CSR), reg);
 if (sc_if->msk_framesize > (MCLBYTES - MSK_RX_BUF_ALIGN)) {
  msk_set_prefetch(sc, sc_if->msk_rxq,
      sc_if->msk_rdata.msk_jumbo_rx_ring_paddr,
      MSK_JUMBO_RX_RING_CNT - 1);
  error = msk_init_jumbo_rx_ring(sc_if);
  } else {
  msk_set_prefetch(sc, sc_if->msk_rxq,
      sc_if->msk_rdata.msk_rx_ring_paddr,
      MSK_RX_RING_CNT - 1);
  error = msk_init_rx_ring(sc_if);
 }
 if (error != 0) {
  device_printf(sc_if->msk_if_dev,
      "initialization failed: no memory for Rx buffers\n");
  msk_stop(sc_if);
  return;
 }
 if (sc->msk_hw_id == 128 ||
     sc->msk_hw_id == CHIP_ID_YUKON_SUPR) {

  CSR_WRITE_4(sc, MR_ADDR(sc_if->msk_port, RX_GMF_CTRL_T),
      GMF_RX_MACSEC_FLUSH_OFF);
 }


 if (sc_if->msk_port == MSK_PORT_A) {
  sc->msk_intrmask |= Y2_IS_PORT_A;
  sc->msk_intrhwemask |= Y2_HWE_L1_MASK;
 } else {
  sc->msk_intrmask |= Y2_IS_PORT_B;
  sc->msk_intrhwemask |= Y2_HWE_L2_MASK;
 }

 CSR_WRITE_4(sc, B2_IRQM_MSK, sc->msk_intrmask);
 if (sc->msk_int_holdoff > 0) {

  CSR_WRITE_4(sc, B2_IRQM_INI,
      MSK_USECS(sc, sc->msk_int_holdoff));
  CSR_WRITE_4(sc, B2_IRQM_VAL,
      MSK_USECS(sc, sc->msk_int_holdoff));

  CSR_WRITE_1(sc, B2_IRQM_CTRL, TIM_START);
 }
 CSR_WRITE_4(sc, B0_HWE_IMSK, sc->msk_intrhwemask);
 CSR_READ_4(sc, B0_HWE_IMSK);
 CSR_WRITE_4(sc, B0_IMSK, sc->msk_intrmask);
 CSR_READ_4(sc, B0_IMSK);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 sc_if->msk_flags &= ~MSK_FLAG_LINK;
 mii_mediachg(mii);

 callout_reset(&sc_if->msk_tick_ch, hz, msk_tick, sc_if);
}

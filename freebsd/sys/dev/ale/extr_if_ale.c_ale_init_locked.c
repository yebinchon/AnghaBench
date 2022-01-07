
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; int if_mtu; } ;
struct TYPE_4__ {TYPE_1__* ale_rx_page; int ale_tx_cmb_paddr; int ale_tx_ring_paddr; } ;
struct ale_softc {int ale_int_rx_mod; int ale_int_tx_mod; int ale_max_frame_size; int ale_flags; int ale_dma_rd_burst; int ale_dma_wr_burst; int ale_tick_ch; TYPE_2__ ale_cdata; int ale_miibus; struct ifnet* ale_ifp; } ;
typedef int bus_addr_t ;
struct TYPE_3__ {int cmb_paddr; int page_paddr; } ;


 int ALE_ADDR_HI (int ) ;
 int ALE_ADDR_LO (int ) ;
 int ALE_DMA_BLOCK ;
 int ALE_DMA_CFG ;
 int ALE_FLAG_FASTETHER ;
 int ALE_FLAG_JUMBO ;
 int ALE_FLAG_LINK ;
 int ALE_FLAG_TXCMB_BUG ;
 int ALE_FRAME_SIZE ;
 int ALE_HDPX_CFG ;
 int ALE_IM_TIMER ;
 int ALE_INTRS ;
 int ALE_INTR_CLR_TIMER ;
 int ALE_INTR_MASK ;
 int ALE_INTR_STATUS ;
 int ALE_INT_TRIG_THRESH ;
 int ALE_INT_TRIG_TIMER ;
 int ALE_IPG_IFG_CFG ;
 int ALE_LOCK_ASSERT (struct ale_softc*) ;
 int ALE_MAC_CFG ;
 int ALE_MASTER_CFG ;
 int ALE_PAR0 ;
 int ALE_PAR1 ;
 int ALE_RSS_CPU ;
 int ALE_RSS_IDT_TABLE0 ;
 int ALE_RXF0_CMB0_ADDR_LO ;
 int ALE_RXF0_CMB1_ADDR_LO ;
 int ALE_RXF0_PAGE0 ;
 int ALE_RXF0_PAGE0_ADDR_LO ;
 int ALE_RXF0_PAGE1 ;
 int ALE_RXF0_PAGE1_ADDR_LO ;
 int ALE_RXF_PAGE_SIZE ;
 int ALE_RXQ_CFG ;
 int ALE_RX_FIFO_PAUSE_THRESH ;
 int ALE_RX_JUMBO_THRESH ;
 int ALE_RX_PAGE_SZ ;
 int ALE_SMB_STAT_TIMER ;
 int ALE_SRAM_RX_FIFO_LEN ;
 int ALE_TPD_ADDR_HI ;
 int ALE_TPD_ADDR_LO ;
 int ALE_TPD_CNT ;
 int ALE_TXQ_CFG ;
 int ALE_TX_CMB_ADDR_LO ;
 int ALE_TX_JUMBO_THRESH ;
 int ALE_TX_RING_CNT ;
 int ALE_USECS (int) ;
 int ALE_WOL_CFG ;
 int CSR_READ_4 (struct ale_softc*,int ) ;
 int CSR_WRITE_1 (struct ale_softc*,int ,int ) ;
 int CSR_WRITE_2 (struct ale_softc*,int ,int) ;
 int CSR_WRITE_4 (struct ale_softc*,int ,int) ;
 int DMA_BLOCK_LOAD ;
 int DMA_CFG_OUT_ORDER ;
 int DMA_CFG_RCB_64 ;
 int DMA_CFG_RD_BURST_SHIFT ;
 int DMA_CFG_RD_DELAY_CNT_DEFAULT ;
 int DMA_CFG_RD_DELAY_CNT_MASK ;
 int DMA_CFG_RD_DELAY_CNT_SHIFT ;
 int DMA_CFG_RD_REQ_PRI ;
 int DMA_CFG_RXCMB_ENB ;
 int DMA_CFG_TXCMB_ENB ;
 int DMA_CFG_WR_DELAY_CNT_DEFAULT ;
 int DMA_CFG_WR_DELAY_CNT_MASK ;
 int DMA_CFG_WR_DELAY_CNT_SHIFT ;
 int ETHERMTU ;
 int ETHER_ADDR_LEN ;
 scalar_t__ ETHER_CRC_LEN ;
 scalar_t__ ETHER_HDR_LEN ;
 scalar_t__ ETHER_VLAN_ENCAP_LEN ;
 int HDPX_CFG_ABEBT_DEFAULT ;
 int HDPX_CFG_ABEBT_MASK ;
 int HDPX_CFG_ABEBT_SHIFT ;
 int HDPX_CFG_EXC_DEF_EN ;
 int HDPX_CFG_JAMIPG_DEFAULT ;
 int HDPX_CFG_JAMIPG_MASK ;
 int HDPX_CFG_JAMIPG_SHIFT ;
 int HDPX_CFG_LCOL_DEFAULT ;
 int HDPX_CFG_LCOL_MASK ;
 int HDPX_CFG_LCOL_SHIFT ;
 int HDPX_CFG_RETRY_DEFAULT ;
 int HDPX_CFG_RETRY_MASK ;
 int HDPX_CFG_RETRY_SHIFT ;
 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int IF_LLADDR (struct ifnet*) ;
 int IM_TIMER_RX_SHIFT ;
 int IM_TIMER_TX_SHIFT ;
 int INT_TRIG_RX_THRESH_SHIFT ;
 int INT_TRIG_RX_TIMER_SHIFT ;
 int INT_TRIG_TX_THRESH_SHIFT ;
 int INT_TRIG_TX_TIMER_SHIFT ;
 int IPG_IFG_IPG1_DEFAULT ;
 int IPG_IFG_IPG1_MASK ;
 int IPG_IFG_IPG1_SHIFT ;
 int IPG_IFG_IPG2_DEFAULT ;
 int IPG_IFG_IPG2_MASK ;
 int IPG_IFG_IPG2_SHIFT ;
 int IPG_IFG_IPGT_DEFAULT ;
 int IPG_IFG_IPGT_MASK ;
 int IPG_IFG_IPGT_SHIFT ;
 int IPG_IFG_MIFG_DEFAULT ;
 int IPG_IFG_MIFG_MASK ;
 int IPG_IFG_MIFG_SHIFT ;
 int MAC_CFG_FULL_DUPLEX ;
 int MAC_CFG_PREAMBLE_DEFAULT ;
 int MAC_CFG_PREAMBLE_MASK ;
 int MAC_CFG_PREAMBLE_SHIFT ;
 int MAC_CFG_SPEED_1000 ;
 int MAC_CFG_SPEED_10_100 ;
 int MAC_CFG_TX_AUTO_PAD ;
 int MAC_CFG_TX_CRC_ENB ;
 int MASTER_CHIP_ID_MASK ;
 int MASTER_CHIP_REV_MASK ;
 int MASTER_IM_RX_TIMER_ENB ;
 int MASTER_IM_TX_TIMER_ENB ;
 int RXF_VALID ;
 int RXQ_CFG_ALIGN_32 ;
 int RXQ_CFG_CUT_THROUGH_ENB ;
 int RXQ_CFG_ENB ;
 int RX_FIFO_PAUSE_THRESH_HI_MASK ;
 int RX_FIFO_PAUSE_THRESH_HI_SHIFT ;
 int RX_FIFO_PAUSE_THRESH_LO_MASK ;
 int RX_FIFO_PAUSE_THRESH_LO_SHIFT ;
 int RX_JUMBO_LKAH_DEFAULT ;
 int RX_JUMBO_LKAH_MASK ;
 int RX_JUMBO_LKAH_SHIFT ;
 int RX_JUMBO_THRESH_MASK ;
 int RX_JUMBO_THRESH_MASK_SHIFT ;
 int RX_JUMBO_THRESH_UNIT ;
 int RX_JUMBO_THRESH_UNIT_SHIFT ;
 int TPD_CNT_MASK ;
 int TPD_CNT_SHIFT ;
 int TXQ_CFG_ENB ;
 int TXQ_CFG_ENHANCED_MODE ;
 int TXQ_CFG_TPD_BURST_DEFAULT ;
 int TXQ_CFG_TPD_BURST_MASK ;
 int TXQ_CFG_TPD_BURST_SHIFT ;
 int TXQ_CFG_TX_FIFO_BURST_SHIFT ;
 int TX_JUMBO_THRESH_UNIT ;
 int TX_JUMBO_THRESH_UNIT_SHIFT ;
 int ale_init_rx_pages (struct ale_softc*) ;
 int ale_init_tx_ring (struct ale_softc*) ;
 int ale_reset (struct ale_softc*) ;
 int ale_rxfilter (struct ale_softc*) ;
 int ale_rxvlan (struct ale_softc*) ;
 int ale_stats_clear (struct ale_softc*) ;
 int ale_stop (struct ale_softc*) ;
 int ale_tick ;
 int bcopy (int ,int*,int) ;
 int callout_reset (int *,int ,int ,struct ale_softc*) ;
 struct mii_data* device_get_softc (int ) ;
 int hz ;
 int mii_mediachg (struct mii_data*) ;
 int roundup (int,int ) ;

__attribute__((used)) static void
ale_init_locked(struct ale_softc *sc)
{
 struct ifnet *ifp;
 struct mii_data *mii;
 uint8_t eaddr[ETHER_ADDR_LEN];
 bus_addr_t paddr;
 uint32_t reg, rxf_hi, rxf_lo;

 ALE_LOCK_ASSERT(sc);

 ifp = sc->ale_ifp;
 mii = device_get_softc(sc->ale_miibus);

 if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
  return;



 ale_stop(sc);



 ale_reset(sc);

 ale_init_rx_pages(sc);
 ale_init_tx_ring(sc);


 bcopy(IF_LLADDR(ifp), eaddr, ETHER_ADDR_LEN);
 CSR_WRITE_4(sc, ALE_PAR0,
     eaddr[2] << 24 | eaddr[3] << 16 | eaddr[4] << 8 | eaddr[5]);
 CSR_WRITE_4(sc, ALE_PAR1, eaddr[0] << 8 | eaddr[1]);




 CSR_READ_4(sc, ALE_WOL_CFG);
 CSR_WRITE_4(sc, ALE_WOL_CFG, 0);




 paddr = sc->ale_cdata.ale_tx_ring_paddr;
 CSR_WRITE_4(sc, ALE_TPD_ADDR_HI, ALE_ADDR_HI(paddr));
 CSR_WRITE_4(sc, ALE_TPD_ADDR_LO, ALE_ADDR_LO(paddr));
 CSR_WRITE_4(sc, ALE_TPD_CNT,
     (ALE_TX_RING_CNT << TPD_CNT_SHIFT) & TPD_CNT_MASK);

 paddr = sc->ale_cdata.ale_rx_page[0].page_paddr;
 CSR_WRITE_4(sc, ALE_RXF0_PAGE0_ADDR_LO, ALE_ADDR_LO(paddr));
 paddr = sc->ale_cdata.ale_rx_page[1].page_paddr;
 CSR_WRITE_4(sc, ALE_RXF0_PAGE1_ADDR_LO, ALE_ADDR_LO(paddr));

 paddr = sc->ale_cdata.ale_tx_cmb_paddr;
 CSR_WRITE_4(sc, ALE_TX_CMB_ADDR_LO, ALE_ADDR_LO(paddr));
 paddr = sc->ale_cdata.ale_rx_page[0].cmb_paddr;
 CSR_WRITE_4(sc, ALE_RXF0_CMB0_ADDR_LO, ALE_ADDR_LO(paddr));
 paddr = sc->ale_cdata.ale_rx_page[1].cmb_paddr;
 CSR_WRITE_4(sc, ALE_RXF0_CMB1_ADDR_LO, ALE_ADDR_LO(paddr));

 CSR_WRITE_1(sc, ALE_RXF0_PAGE0, RXF_VALID);
 CSR_WRITE_1(sc, ALE_RXF0_PAGE1, RXF_VALID);






 CSR_WRITE_4(sc, ALE_RXF_PAGE_SIZE, ALE_RX_PAGE_SZ);

 CSR_WRITE_4(sc, ALE_DMA_BLOCK, DMA_BLOCK_LOAD);


 CSR_WRITE_4(sc, ALE_INT_TRIG_THRESH, (1 << INT_TRIG_RX_THRESH_SHIFT) |
     (4 << INT_TRIG_TX_THRESH_SHIFT));





 CSR_WRITE_4(sc, ALE_INT_TRIG_TIMER,
     ((ALE_USECS(10) << INT_TRIG_RX_TIMER_SHIFT) |
     (ALE_USECS(1000) << INT_TRIG_TX_TIMER_SHIFT)));


 reg = ALE_USECS(sc->ale_int_rx_mod) << IM_TIMER_RX_SHIFT;
 reg |= ALE_USECS(sc->ale_int_tx_mod) << IM_TIMER_TX_SHIFT;
 CSR_WRITE_4(sc, ALE_IM_TIMER, reg);
 reg = CSR_READ_4(sc, ALE_MASTER_CFG);
 reg &= ~(MASTER_CHIP_REV_MASK | MASTER_CHIP_ID_MASK);
 reg &= ~(MASTER_IM_RX_TIMER_ENB | MASTER_IM_TX_TIMER_ENB);
 if (ALE_USECS(sc->ale_int_rx_mod) != 0)
  reg |= MASTER_IM_RX_TIMER_ENB;
 if (ALE_USECS(sc->ale_int_tx_mod) != 0)
  reg |= MASTER_IM_TX_TIMER_ENB;
 CSR_WRITE_4(sc, ALE_MASTER_CFG, reg);
 CSR_WRITE_2(sc, ALE_INTR_CLR_TIMER, ALE_USECS(1000));


 if (ifp->if_mtu < ETHERMTU)
  sc->ale_max_frame_size = ETHERMTU;
 else
  sc->ale_max_frame_size = ifp->if_mtu;
 sc->ale_max_frame_size += ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN +
     ETHER_CRC_LEN;
 CSR_WRITE_4(sc, ALE_FRAME_SIZE, sc->ale_max_frame_size);

 CSR_WRITE_4(sc, ALE_IPG_IFG_CFG,
     ((IPG_IFG_IPGT_DEFAULT << IPG_IFG_IPGT_SHIFT) & IPG_IFG_IPGT_MASK) |
     ((IPG_IFG_MIFG_DEFAULT << IPG_IFG_MIFG_SHIFT) & IPG_IFG_MIFG_MASK) |
     ((IPG_IFG_IPG1_DEFAULT << IPG_IFG_IPG1_SHIFT) & IPG_IFG_IPG1_MASK) |
     ((IPG_IFG_IPG2_DEFAULT << IPG_IFG_IPG2_SHIFT) & IPG_IFG_IPG2_MASK));

 CSR_WRITE_4(sc, ALE_HDPX_CFG,
     ((HDPX_CFG_LCOL_DEFAULT << HDPX_CFG_LCOL_SHIFT) &
     HDPX_CFG_LCOL_MASK) |
     ((HDPX_CFG_RETRY_DEFAULT << HDPX_CFG_RETRY_SHIFT) &
     HDPX_CFG_RETRY_MASK) | HDPX_CFG_EXC_DEF_EN |
     ((HDPX_CFG_ABEBT_DEFAULT << HDPX_CFG_ABEBT_SHIFT) &
     HDPX_CFG_ABEBT_MASK) |
     ((HDPX_CFG_JAMIPG_DEFAULT << HDPX_CFG_JAMIPG_SHIFT) &
     HDPX_CFG_JAMIPG_MASK));


 if ((sc->ale_flags & ALE_FLAG_JUMBO) != 0) {
  if (ifp->if_mtu < ETHERMTU)
   reg = sc->ale_max_frame_size;
  else if (ifp->if_mtu < 6 * 1024)
   reg = (sc->ale_max_frame_size * 2) / 3;
  else
   reg = sc->ale_max_frame_size / 2;
  CSR_WRITE_4(sc, ALE_TX_JUMBO_THRESH,
      roundup(reg, TX_JUMBO_THRESH_UNIT) >>
      TX_JUMBO_THRESH_UNIT_SHIFT);
 }

 reg = (128 << (sc->ale_dma_rd_burst >> DMA_CFG_RD_BURST_SHIFT))
     << TXQ_CFG_TX_FIFO_BURST_SHIFT;
 reg |= (TXQ_CFG_TPD_BURST_DEFAULT << TXQ_CFG_TPD_BURST_SHIFT) &
     TXQ_CFG_TPD_BURST_MASK;
 CSR_WRITE_4(sc, ALE_TXQ_CFG, reg | TXQ_CFG_ENHANCED_MODE | TXQ_CFG_ENB);


 if ((sc->ale_flags & ALE_FLAG_JUMBO) != 0) {
  reg = roundup(sc->ale_max_frame_size, RX_JUMBO_THRESH_UNIT);
  CSR_WRITE_4(sc, ALE_RX_JUMBO_THRESH,
      (((reg >> RX_JUMBO_THRESH_UNIT_SHIFT) <<
      RX_JUMBO_THRESH_MASK_SHIFT) & RX_JUMBO_THRESH_MASK) |
      ((RX_JUMBO_LKAH_DEFAULT << RX_JUMBO_LKAH_SHIFT) &
      RX_JUMBO_LKAH_MASK));
  reg = CSR_READ_4(sc, ALE_SRAM_RX_FIFO_LEN);
  rxf_hi = (reg * 7) / 10;
  rxf_lo = (reg * 3)/ 10;
  CSR_WRITE_4(sc, ALE_RX_FIFO_PAUSE_THRESH,
      ((rxf_lo << RX_FIFO_PAUSE_THRESH_LO_SHIFT) &
      RX_FIFO_PAUSE_THRESH_LO_MASK) |
      ((rxf_hi << RX_FIFO_PAUSE_THRESH_HI_SHIFT) &
      RX_FIFO_PAUSE_THRESH_HI_MASK));
 }


 CSR_WRITE_4(sc, ALE_RSS_IDT_TABLE0, 0);
 CSR_WRITE_4(sc, ALE_RSS_CPU, 0);


 CSR_WRITE_4(sc, ALE_RXQ_CFG,
     RXQ_CFG_ALIGN_32 | RXQ_CFG_CUT_THROUGH_ENB | RXQ_CFG_ENB);


 reg = 0;
 if ((sc->ale_flags & ALE_FLAG_TXCMB_BUG) == 0)
  reg |= DMA_CFG_TXCMB_ENB;
 CSR_WRITE_4(sc, ALE_DMA_CFG,
     DMA_CFG_OUT_ORDER | DMA_CFG_RD_REQ_PRI | DMA_CFG_RCB_64 |
     sc->ale_dma_rd_burst | reg |
     sc->ale_dma_wr_burst | DMA_CFG_RXCMB_ENB |
     ((DMA_CFG_RD_DELAY_CNT_DEFAULT << DMA_CFG_RD_DELAY_CNT_SHIFT) &
     DMA_CFG_RD_DELAY_CNT_MASK) |
     ((DMA_CFG_WR_DELAY_CNT_DEFAULT << DMA_CFG_WR_DELAY_CNT_SHIFT) &
     DMA_CFG_WR_DELAY_CNT_MASK));







 CSR_WRITE_4(sc, ALE_SMB_STAT_TIMER, ALE_USECS(0));

 ale_stats_clear(sc);
 reg = MAC_CFG_TX_CRC_ENB | MAC_CFG_TX_AUTO_PAD | MAC_CFG_FULL_DUPLEX |
     ((MAC_CFG_PREAMBLE_DEFAULT << MAC_CFG_PREAMBLE_SHIFT) &
     MAC_CFG_PREAMBLE_MASK);
 if ((sc->ale_flags & ALE_FLAG_FASTETHER) != 0)
  reg |= MAC_CFG_SPEED_10_100;
 else
  reg |= MAC_CFG_SPEED_1000;
 CSR_WRITE_4(sc, ALE_MAC_CFG, reg);


 ale_rxfilter(sc);
 ale_rxvlan(sc);


 CSR_WRITE_4(sc, ALE_INTR_MASK, ALE_INTRS);
 CSR_WRITE_4(sc, ALE_INTR_STATUS, 0xFFFFFFFF);
 CSR_WRITE_4(sc, ALE_INTR_STATUS, 0);

 ifp->if_drv_flags |= IFF_DRV_RUNNING;
 ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

 sc->ale_flags &= ~ALE_FLAG_LINK;

 mii_mediachg(mii);

 callout_reset(&sc->ale_tick_ch, hz, ale_tick, sc);
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; int if_mtu; } ;
struct TYPE_4__ {TYPE_1__* ale_rx_page; int /*<<< orphan*/  ale_tx_cmb_paddr; int /*<<< orphan*/  ale_tx_ring_paddr; } ;
struct ale_softc {int ale_int_rx_mod; int ale_int_tx_mod; int ale_max_frame_size; int ale_flags; int ale_dma_rd_burst; int ale_dma_wr_burst; int /*<<< orphan*/  ale_tick_ch; TYPE_2__ ale_cdata; int /*<<< orphan*/  ale_miibus; struct ifnet* ale_ifp; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_3__ {int /*<<< orphan*/  cmb_paddr; int /*<<< orphan*/  page_paddr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ALE_DMA_BLOCK ; 
 int /*<<< orphan*/  ALE_DMA_CFG ; 
 int ALE_FLAG_FASTETHER ; 
 int ALE_FLAG_JUMBO ; 
 int ALE_FLAG_LINK ; 
 int ALE_FLAG_TXCMB_BUG ; 
 int /*<<< orphan*/  ALE_FRAME_SIZE ; 
 int /*<<< orphan*/  ALE_HDPX_CFG ; 
 int /*<<< orphan*/  ALE_IM_TIMER ; 
 int ALE_INTRS ; 
 int /*<<< orphan*/  ALE_INTR_CLR_TIMER ; 
 int /*<<< orphan*/  ALE_INTR_MASK ; 
 int /*<<< orphan*/  ALE_INTR_STATUS ; 
 int /*<<< orphan*/  ALE_INT_TRIG_THRESH ; 
 int /*<<< orphan*/  ALE_INT_TRIG_TIMER ; 
 int /*<<< orphan*/  ALE_IPG_IFG_CFG ; 
 int /*<<< orphan*/  FUNC2 (struct ale_softc*) ; 
 int /*<<< orphan*/  ALE_MAC_CFG ; 
 int /*<<< orphan*/  ALE_MASTER_CFG ; 
 int /*<<< orphan*/  ALE_PAR0 ; 
 int /*<<< orphan*/  ALE_PAR1 ; 
 int /*<<< orphan*/  ALE_RSS_CPU ; 
 int /*<<< orphan*/  ALE_RSS_IDT_TABLE0 ; 
 int /*<<< orphan*/  ALE_RXF0_CMB0_ADDR_LO ; 
 int /*<<< orphan*/  ALE_RXF0_CMB1_ADDR_LO ; 
 int /*<<< orphan*/  ALE_RXF0_PAGE0 ; 
 int /*<<< orphan*/  ALE_RXF0_PAGE0_ADDR_LO ; 
 int /*<<< orphan*/  ALE_RXF0_PAGE1 ; 
 int /*<<< orphan*/  ALE_RXF0_PAGE1_ADDR_LO ; 
 int /*<<< orphan*/  ALE_RXF_PAGE_SIZE ; 
 int /*<<< orphan*/  ALE_RXQ_CFG ; 
 int /*<<< orphan*/  ALE_RX_FIFO_PAUSE_THRESH ; 
 int /*<<< orphan*/  ALE_RX_JUMBO_THRESH ; 
 int ALE_RX_PAGE_SZ ; 
 int /*<<< orphan*/  ALE_SMB_STAT_TIMER ; 
 int /*<<< orphan*/  ALE_SRAM_RX_FIFO_LEN ; 
 int /*<<< orphan*/  ALE_TPD_ADDR_HI ; 
 int /*<<< orphan*/  ALE_TPD_ADDR_LO ; 
 int /*<<< orphan*/  ALE_TPD_CNT ; 
 int /*<<< orphan*/  ALE_TXQ_CFG ; 
 int /*<<< orphan*/  ALE_TX_CMB_ADDR_LO ; 
 int /*<<< orphan*/  ALE_TX_JUMBO_THRESH ; 
 int ALE_TX_RING_CNT ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  ALE_WOL_CFG ; 
 int FUNC4 (struct ale_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ale_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ale_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ale_softc*,int /*<<< orphan*/ ,int) ; 
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
 int /*<<< orphan*/  FUNC8 (struct ifnet*) ; 
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
 int /*<<< orphan*/  RXF_VALID ; 
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
 int /*<<< orphan*/  RX_JUMBO_THRESH_UNIT ; 
 int RX_JUMBO_THRESH_UNIT_SHIFT ; 
 int TPD_CNT_MASK ; 
 int TPD_CNT_SHIFT ; 
 int TXQ_CFG_ENB ; 
 int TXQ_CFG_ENHANCED_MODE ; 
 int TXQ_CFG_TPD_BURST_DEFAULT ; 
 int TXQ_CFG_TPD_BURST_MASK ; 
 int TXQ_CFG_TPD_BURST_SHIFT ; 
 int TXQ_CFG_TX_FIFO_BURST_SHIFT ; 
 int /*<<< orphan*/  TX_JUMBO_THRESH_UNIT ; 
 int TX_JUMBO_THRESH_UNIT_SHIFT ; 
 int /*<<< orphan*/  FUNC9 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC14 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC15 (struct ale_softc*) ; 
 int /*<<< orphan*/  ale_tick ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ale_softc*) ; 
 struct mii_data* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC19 (struct mii_data*) ; 
 int FUNC20 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21(struct ale_softc *sc)
{
	struct ifnet *ifp;
	struct mii_data *mii;
	uint8_t eaddr[ETHER_ADDR_LEN];
	bus_addr_t paddr;
	uint32_t reg, rxf_hi, rxf_lo;

	FUNC2(sc);

	ifp = sc->ale_ifp;
	mii = FUNC18(sc->ale_miibus);

	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return;
	/*
	 * Cancel any pending I/O.
	 */
	FUNC15(sc);
	/*
	 * Reset the chip to a known state.
	 */
	FUNC11(sc);
	/* Initialize Tx descriptors, DMA memory blocks. */
	FUNC9(sc);
	FUNC10(sc);

	/* Reprogram the station address. */
	FUNC16(FUNC8(ifp), eaddr, ETHER_ADDR_LEN);
	FUNC7(sc, ALE_PAR0,
	    eaddr[2] << 24 | eaddr[3] << 16 | eaddr[4] << 8 | eaddr[5]);
	FUNC7(sc, ALE_PAR1, eaddr[0] << 8 | eaddr[1]);
	/*
	 * Clear WOL status and disable all WOL feature as WOL
	 * would interfere Rx operation under normal environments.
	 */
	FUNC4(sc, ALE_WOL_CFG);
	FUNC7(sc, ALE_WOL_CFG, 0);
	/*
	 * Set Tx descriptor/RXF0/CMB base addresses. They share
	 * the same high address part of DMAable region.
	 */
	paddr = sc->ale_cdata.ale_tx_ring_paddr;
	FUNC7(sc, ALE_TPD_ADDR_HI, FUNC0(paddr));
	FUNC7(sc, ALE_TPD_ADDR_LO, FUNC1(paddr));
	FUNC7(sc, ALE_TPD_CNT,
	    (ALE_TX_RING_CNT << TPD_CNT_SHIFT) & TPD_CNT_MASK);
	/* Set Rx page base address, note we use single queue. */
	paddr = sc->ale_cdata.ale_rx_page[0].page_paddr;
	FUNC7(sc, ALE_RXF0_PAGE0_ADDR_LO, FUNC1(paddr));
	paddr = sc->ale_cdata.ale_rx_page[1].page_paddr;
	FUNC7(sc, ALE_RXF0_PAGE1_ADDR_LO, FUNC1(paddr));
	/* Set Tx/Rx CMB addresses. */
	paddr = sc->ale_cdata.ale_tx_cmb_paddr;
	FUNC7(sc, ALE_TX_CMB_ADDR_LO, FUNC1(paddr));
	paddr = sc->ale_cdata.ale_rx_page[0].cmb_paddr;
	FUNC7(sc, ALE_RXF0_CMB0_ADDR_LO, FUNC1(paddr));
	paddr = sc->ale_cdata.ale_rx_page[1].cmb_paddr;
	FUNC7(sc, ALE_RXF0_CMB1_ADDR_LO, FUNC1(paddr));
	/* Mark RXF0 is valid. */
	FUNC5(sc, ALE_RXF0_PAGE0, RXF_VALID);
	FUNC5(sc, ALE_RXF0_PAGE1, RXF_VALID);
	/*
	 * No need to initialize RFX1/RXF2/RXF3. We don't use
	 * multi-queue yet.
	 */

	/* Set Rx page size, excluding guard frame size. */
	FUNC7(sc, ALE_RXF_PAGE_SIZE, ALE_RX_PAGE_SZ);
	/* Tell hardware that we're ready to load DMA blocks. */
	FUNC7(sc, ALE_DMA_BLOCK, DMA_BLOCK_LOAD);

	/* Set Rx/Tx interrupt trigger threshold. */
	FUNC7(sc, ALE_INT_TRIG_THRESH, (1 << INT_TRIG_RX_THRESH_SHIFT) |
	    (4 << INT_TRIG_TX_THRESH_SHIFT));
	/*
	 * XXX
	 * Set interrupt trigger timer, its purpose and relation
	 * with interrupt moderation mechanism is not clear yet.
	 */
	FUNC7(sc, ALE_INT_TRIG_TIMER,
	    ((FUNC3(10) << INT_TRIG_RX_TIMER_SHIFT) |
	    (FUNC3(1000) << INT_TRIG_TX_TIMER_SHIFT)));

	/* Configure interrupt moderation timer. */
	reg = FUNC3(sc->ale_int_rx_mod) << IM_TIMER_RX_SHIFT;
	reg |= FUNC3(sc->ale_int_tx_mod) << IM_TIMER_TX_SHIFT;
	FUNC7(sc, ALE_IM_TIMER, reg);
	reg = FUNC4(sc, ALE_MASTER_CFG);
	reg &= ~(MASTER_CHIP_REV_MASK | MASTER_CHIP_ID_MASK);
	reg &= ~(MASTER_IM_RX_TIMER_ENB | MASTER_IM_TX_TIMER_ENB);
	if (FUNC3(sc->ale_int_rx_mod) != 0)
		reg |= MASTER_IM_RX_TIMER_ENB;
	if (FUNC3(sc->ale_int_tx_mod) != 0)
		reg |= MASTER_IM_TX_TIMER_ENB;
	FUNC7(sc, ALE_MASTER_CFG, reg);
	FUNC6(sc, ALE_INTR_CLR_TIMER, FUNC3(1000));

	/* Set Maximum frame size of controller. */
	if (ifp->if_mtu < ETHERMTU)
		sc->ale_max_frame_size = ETHERMTU;
	else
		sc->ale_max_frame_size = ifp->if_mtu;
	sc->ale_max_frame_size += ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN +
	    ETHER_CRC_LEN;
	FUNC7(sc, ALE_FRAME_SIZE, sc->ale_max_frame_size);
	/* Configure IPG/IFG parameters. */
	FUNC7(sc, ALE_IPG_IFG_CFG,
	    ((IPG_IFG_IPGT_DEFAULT << IPG_IFG_IPGT_SHIFT) & IPG_IFG_IPGT_MASK) |
	    ((IPG_IFG_MIFG_DEFAULT << IPG_IFG_MIFG_SHIFT) & IPG_IFG_MIFG_MASK) |
	    ((IPG_IFG_IPG1_DEFAULT << IPG_IFG_IPG1_SHIFT) & IPG_IFG_IPG1_MASK) |
	    ((IPG_IFG_IPG2_DEFAULT << IPG_IFG_IPG2_SHIFT) & IPG_IFG_IPG2_MASK));
	/* Set parameters for half-duplex media. */
	FUNC7(sc, ALE_HDPX_CFG,
	    ((HDPX_CFG_LCOL_DEFAULT << HDPX_CFG_LCOL_SHIFT) &
	    HDPX_CFG_LCOL_MASK) |
	    ((HDPX_CFG_RETRY_DEFAULT << HDPX_CFG_RETRY_SHIFT) &
	    HDPX_CFG_RETRY_MASK) | HDPX_CFG_EXC_DEF_EN |
	    ((HDPX_CFG_ABEBT_DEFAULT << HDPX_CFG_ABEBT_SHIFT) &
	    HDPX_CFG_ABEBT_MASK) |
	    ((HDPX_CFG_JAMIPG_DEFAULT << HDPX_CFG_JAMIPG_SHIFT) &
	    HDPX_CFG_JAMIPG_MASK));

	/* Configure Tx jumbo frame parameters. */
	if ((sc->ale_flags & ALE_FLAG_JUMBO) != 0) {
		if (ifp->if_mtu < ETHERMTU)
			reg = sc->ale_max_frame_size;
		else if (ifp->if_mtu < 6 * 1024)
			reg = (sc->ale_max_frame_size * 2) / 3;
		else
			reg = sc->ale_max_frame_size / 2;
		FUNC7(sc, ALE_TX_JUMBO_THRESH,
		    FUNC20(reg, TX_JUMBO_THRESH_UNIT) >>
		    TX_JUMBO_THRESH_UNIT_SHIFT);
	}
	/* Configure TxQ. */
	reg = (128 << (sc->ale_dma_rd_burst >> DMA_CFG_RD_BURST_SHIFT))
	    << TXQ_CFG_TX_FIFO_BURST_SHIFT;
	reg |= (TXQ_CFG_TPD_BURST_DEFAULT << TXQ_CFG_TPD_BURST_SHIFT) &
	    TXQ_CFG_TPD_BURST_MASK;
	FUNC7(sc, ALE_TXQ_CFG, reg | TXQ_CFG_ENHANCED_MODE | TXQ_CFG_ENB);

	/* Configure Rx jumbo frame & flow control parameters. */
	if ((sc->ale_flags & ALE_FLAG_JUMBO) != 0) {
		reg = FUNC20(sc->ale_max_frame_size, RX_JUMBO_THRESH_UNIT);
		FUNC7(sc, ALE_RX_JUMBO_THRESH,
		    (((reg >> RX_JUMBO_THRESH_UNIT_SHIFT) <<
		    RX_JUMBO_THRESH_MASK_SHIFT) & RX_JUMBO_THRESH_MASK) |
		    ((RX_JUMBO_LKAH_DEFAULT << RX_JUMBO_LKAH_SHIFT) &
		    RX_JUMBO_LKAH_MASK));
		reg = FUNC4(sc, ALE_SRAM_RX_FIFO_LEN);
		rxf_hi = (reg * 7) / 10;
		rxf_lo = (reg * 3)/ 10;
		FUNC7(sc, ALE_RX_FIFO_PAUSE_THRESH,
		    ((rxf_lo << RX_FIFO_PAUSE_THRESH_LO_SHIFT) &
		    RX_FIFO_PAUSE_THRESH_LO_MASK) |
		    ((rxf_hi << RX_FIFO_PAUSE_THRESH_HI_SHIFT) &
		    RX_FIFO_PAUSE_THRESH_HI_MASK));
	}

	/* Disable RSS. */
	FUNC7(sc, ALE_RSS_IDT_TABLE0, 0);
	FUNC7(sc, ALE_RSS_CPU, 0);

	/* Configure RxQ. */
	FUNC7(sc, ALE_RXQ_CFG,
	    RXQ_CFG_ALIGN_32 | RXQ_CFG_CUT_THROUGH_ENB | RXQ_CFG_ENB);

	/* Configure DMA parameters. */
	reg = 0;
	if ((sc->ale_flags & ALE_FLAG_TXCMB_BUG) == 0)
		reg |= DMA_CFG_TXCMB_ENB;
	FUNC7(sc, ALE_DMA_CFG,
	    DMA_CFG_OUT_ORDER | DMA_CFG_RD_REQ_PRI | DMA_CFG_RCB_64 |
	    sc->ale_dma_rd_burst | reg |
	    sc->ale_dma_wr_burst | DMA_CFG_RXCMB_ENB |
	    ((DMA_CFG_RD_DELAY_CNT_DEFAULT << DMA_CFG_RD_DELAY_CNT_SHIFT) &
	    DMA_CFG_RD_DELAY_CNT_MASK) |
	    ((DMA_CFG_WR_DELAY_CNT_DEFAULT << DMA_CFG_WR_DELAY_CNT_SHIFT) &
	    DMA_CFG_WR_DELAY_CNT_MASK));

	/*
	 * Hardware can be configured to issue SMB interrupt based
	 * on programmed interval. Since there is a callout that is
	 * invoked for every hz in driver we use that instead of
	 * relying on periodic SMB interrupt.
	 */
	FUNC7(sc, ALE_SMB_STAT_TIMER, FUNC3(0));
	/* Clear MAC statistics. */
	FUNC14(sc);

	/*
	 * Configure Tx/Rx MACs.
	 *  - Auto-padding for short frames.
	 *  - Enable CRC generation.
	 *  Actual reconfiguration of MAC for resolved speed/duplex
	 *  is followed after detection of link establishment.
	 *  AR81xx always does checksum computation regardless of
	 *  MAC_CFG_RXCSUM_ENB bit. In fact, setting the bit will
	 *  cause Rx handling issue for fragmented IP datagrams due
	 *  to silicon bug.
	 */
	reg = MAC_CFG_TX_CRC_ENB | MAC_CFG_TX_AUTO_PAD | MAC_CFG_FULL_DUPLEX |
	    ((MAC_CFG_PREAMBLE_DEFAULT << MAC_CFG_PREAMBLE_SHIFT) &
	    MAC_CFG_PREAMBLE_MASK);
	if ((sc->ale_flags & ALE_FLAG_FASTETHER) != 0)
		reg |= MAC_CFG_SPEED_10_100;
	else
		reg |= MAC_CFG_SPEED_1000;
	FUNC7(sc, ALE_MAC_CFG, reg);

	/* Set up the receive filter. */
	FUNC12(sc);
	FUNC13(sc);

	/* Acknowledge all pending interrupts and clear it. */
	FUNC7(sc, ALE_INTR_MASK, ALE_INTRS);
	FUNC7(sc, ALE_INTR_STATUS, 0xFFFFFFFF);
	FUNC7(sc, ALE_INTR_STATUS, 0);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

	sc->ale_flags &= ~ALE_FLAG_LINK;
	/* Switch to the current media. */
	FUNC19(mii);

	FUNC17(&sc->ale_tick_ch, hz, ale_tick, sc);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct mii_data {int dummy; } ;
struct ifnet {int if_drv_flags; int if_mtu; } ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_16__ {int txd_cur; int rxd_cur; int /*<<< orphan*/  dev; int /*<<< orphan*/  tick_ch; int /*<<< orphan*/  flags; scalar_t__ tx_inproc; scalar_t__ txd_ack; scalar_t__ txs_ack; int /*<<< orphan*/  dma_txs_busaddr; int /*<<< orphan*/  dma_txd_busaddr; int /*<<< orphan*/  dma_rxd_busaddr; int /*<<< orphan*/  txs_base; int /*<<< orphan*/  txd_base; int /*<<< orphan*/  rxd_base_dma; int /*<<< orphan*/  miibus; struct ifnet* ifp; } ;
typedef  TYPE_1__ ae_softc_t ;

/* Variables and functions */
 int AE_CUT_THRESH_DEFAULT ; 
 int /*<<< orphan*/  AE_CUT_THRESH_REG ; 
 int /*<<< orphan*/  AE_DESC_ADDR_HI_REG ; 
 int /*<<< orphan*/  AE_DMAREAD_EN ; 
 int /*<<< orphan*/  AE_DMAREAD_REG ; 
 int /*<<< orphan*/  AE_DMAWRITE_EN ; 
 int /*<<< orphan*/  AE_DMAWRITE_REG ; 
 int /*<<< orphan*/  AE_EADDR0_REG ; 
 int /*<<< orphan*/  AE_EADDR1_REG ; 
 int /*<<< orphan*/  AE_FLAG_LINK ; 
 int /*<<< orphan*/  AE_FLAG_TXAVAIL ; 
 int /*<<< orphan*/  AE_FLOW_THRESH_HI_REG ; 
 int /*<<< orphan*/  AE_FLOW_THRESH_LO_REG ; 
 int AE_HALFBUF_DEFAULT ; 
 int AE_HALFBUF_MASK ; 
 int AE_HALFBUF_SHIFT ; 
 int AE_HDPX_ABEBT_DEFAULT ; 
 int AE_HDPX_ABEBT_MASK ; 
 int AE_HDPX_ABEBT_SHIFT ; 
 int AE_HDPX_EXC_EN ; 
 int AE_HDPX_JAMIPG_DEFAULT ; 
 int AE_HDPX_JAMIPG_MASK ; 
 int AE_HDPX_JAMIPG_SHIFT ; 
 int AE_HDPX_LCOL_DEFAULT ; 
 int AE_HDPX_LCOL_MASK ; 
 int AE_HDPX_LCOL_SHIFT ; 
 int /*<<< orphan*/  AE_HDPX_REG ; 
 int AE_HDPX_RETRY_DEFAULT ; 
 int AE_HDPX_RETRY_MASK ; 
 int AE_HDPX_RETRY_SHIFT ; 
 int AE_ICT_DEFAULT ; 
 int /*<<< orphan*/  AE_ICT_REG ; 
 int AE_IFG_IPGR1_DEFAULT ; 
 int AE_IFG_IPGR1_MASK ; 
 int AE_IFG_IPGR1_SHIFT ; 
 int AE_IFG_IPGR2_DEFAULT ; 
 int AE_IFG_IPGR2_MASK ; 
 int AE_IFG_IPGR2_SHIFT ; 
 int /*<<< orphan*/  AE_IFG_REG ; 
 int AE_IFG_RXIPG_DEFAULT ; 
 int AE_IFG_RXIPG_MASK ; 
 int AE_IFG_RXIPG_SHIFT ; 
 int AE_IFG_TXIPG_DEFAULT ; 
 int AE_IFG_TXIPG_MASK ; 
 int AE_IFG_TXIPG_SHIFT ; 
 int AE_IMR_DEFAULT ; 
 int /*<<< orphan*/  AE_IMR_REG ; 
 int AE_IMT_DEFAULT ; 
 int /*<<< orphan*/  AE_IMT_REG ; 
 int AE_ISR_PHY_LINKDOWN ; 
 int /*<<< orphan*/  AE_ISR_REG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int AE_MAC_CLK_PHY ; 
 int AE_MAC_FULL_DUPLEX ; 
 int AE_MAC_PREAMBLE_DEFAULT ; 
 int AE_MAC_PREAMBLE_MASK ; 
 int AE_MAC_PREAMBLE_SHIFT ; 
 int /*<<< orphan*/  AE_MAC_REG ; 
 int AE_MAC_RX_EN ; 
 int AE_MAC_RX_FLOW_EN ; 
 int AE_MAC_TX_AUTOPAD ; 
 int AE_MAC_TX_CRC_EN ; 
 int AE_MAC_TX_EN ; 
 int AE_MAC_TX_FLOW_EN ; 
 int AE_MASTER_IMT_EN ; 
 int AE_MASTER_MANUAL_INT ; 
 int /*<<< orphan*/  AE_MASTER_REG ; 
 int /*<<< orphan*/  AE_MB_RXD_IDX_REG ; 
 int /*<<< orphan*/  AE_MB_TXD_IDX_REG ; 
 int /*<<< orphan*/  AE_MTU_REG ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_RXD_ADDR_LO_REG ; 
 int AE_RXD_COUNT_DEFAULT ; 
 int AE_RXD_COUNT_MIN ; 
 int /*<<< orphan*/  AE_RXD_COUNT_REG ; 
 int AE_RXD_PADDING ; 
 int /*<<< orphan*/  AE_TXD_ADDR_LO_REG ; 
 int AE_TXD_BUFSIZE_DEFAULT ; 
 int /*<<< orphan*/  AE_TXD_BUFSIZE_REG ; 
 int /*<<< orphan*/  AE_TXS_ADDR_LO_REG ; 
 int AE_TXS_COUNT_DEFAULT ; 
 int /*<<< orphan*/  AE_TXS_COUNT_REG ; 
 int /*<<< orphan*/  AE_WOL_REG ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int ETHER_ADDR_LEN ; 
 int ETHER_CRC_LEN ; 
 int ETHER_HDR_LEN ; 
 int ETHER_VLAN_ENCAP_LEN ; 
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  ae_tick ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 struct mii_data* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC20 (struct mii_data*) ; 

__attribute__((used)) static int
FUNC21(ae_softc_t *sc)
{
	struct ifnet *ifp;
	struct mii_data *mii;
	uint8_t eaddr[ETHER_ADDR_LEN];
	uint32_t val;
	bus_addr_t addr;

	FUNC0(sc);

	ifp = sc->ifp;
	if ((ifp->if_drv_flags & IFF_DRV_RUNNING) != 0)
		return (0);
	mii = FUNC18(sc->miibus);

	FUNC14(sc);
	FUNC11(sc);
	FUNC8(sc);		/* Initialize PCIE stuff. */
	FUNC9(sc);
	FUNC10(sc);

	/*
	 * Clear and disable interrupts.
	 */
	FUNC4(sc, AE_ISR_REG, 0xffffffff);

	/*
	 * Set the MAC address.
	 */
	FUNC15(FUNC7(ifp), eaddr, ETHER_ADDR_LEN);
	val = eaddr[2] << 24 | eaddr[3] << 16 | eaddr[4] << 8 | eaddr[5];
	FUNC4(sc, AE_EADDR0_REG, val);
	val = eaddr[0] << 8 | eaddr[1];
	FUNC4(sc, AE_EADDR1_REG, val);

	FUNC16(sc->rxd_base_dma, AE_RXD_COUNT_DEFAULT * 1536 + AE_RXD_PADDING);
	FUNC16(sc->txd_base, AE_TXD_BUFSIZE_DEFAULT);
	FUNC16(sc->txs_base, AE_TXS_COUNT_DEFAULT * 4);
	/*
	 * Set ring buffers base addresses.
	 */
	addr = sc->dma_rxd_busaddr;
	FUNC4(sc, AE_DESC_ADDR_HI_REG, FUNC5(addr));
	FUNC4(sc, AE_RXD_ADDR_LO_REG, FUNC6(addr));
	addr = sc->dma_txd_busaddr;
	FUNC4(sc, AE_TXD_ADDR_LO_REG, FUNC6(addr));
	addr = sc->dma_txs_busaddr;
	FUNC4(sc, AE_TXS_ADDR_LO_REG, FUNC6(addr));

	/*
	 * Configure ring buffers sizes.
	 */
	FUNC3(sc, AE_RXD_COUNT_REG, AE_RXD_COUNT_DEFAULT);
	FUNC3(sc, AE_TXD_BUFSIZE_REG, AE_TXD_BUFSIZE_DEFAULT / 4);
	FUNC3(sc, AE_TXS_COUNT_REG, AE_TXS_COUNT_DEFAULT);

	/*
	 * Configure interframe gap parameters.
	 */
	val = ((AE_IFG_TXIPG_DEFAULT << AE_IFG_TXIPG_SHIFT) &
	    AE_IFG_TXIPG_MASK) |
	    ((AE_IFG_RXIPG_DEFAULT << AE_IFG_RXIPG_SHIFT) &
	    AE_IFG_RXIPG_MASK) |
	    ((AE_IFG_IPGR1_DEFAULT << AE_IFG_IPGR1_SHIFT) &
	    AE_IFG_IPGR1_MASK) |
	    ((AE_IFG_IPGR2_DEFAULT << AE_IFG_IPGR2_SHIFT) &
	    AE_IFG_IPGR2_MASK);
	FUNC4(sc, AE_IFG_REG, val);

	/*
	 * Configure half-duplex operation.
	 */
	val = ((AE_HDPX_LCOL_DEFAULT << AE_HDPX_LCOL_SHIFT) &
	    AE_HDPX_LCOL_MASK) |
	    ((AE_HDPX_RETRY_DEFAULT << AE_HDPX_RETRY_SHIFT) &
	    AE_HDPX_RETRY_MASK) |
	    ((AE_HDPX_ABEBT_DEFAULT << AE_HDPX_ABEBT_SHIFT) &
	    AE_HDPX_ABEBT_MASK) |
	    ((AE_HDPX_JAMIPG_DEFAULT << AE_HDPX_JAMIPG_SHIFT) &
	    AE_HDPX_JAMIPG_MASK) | AE_HDPX_EXC_EN;
	FUNC4(sc, AE_HDPX_REG, val);

	/*
	 * Configure interrupt moderate timer.
	 */
	FUNC3(sc, AE_IMT_REG, AE_IMT_DEFAULT);
	val = FUNC1(sc, AE_MASTER_REG);
	val |= AE_MASTER_IMT_EN;
	FUNC4(sc, AE_MASTER_REG, val);

	/*
	 * Configure interrupt clearing timer.
	 */
	FUNC3(sc, AE_ICT_REG, AE_ICT_DEFAULT);

	/*
	 * Configure MTU.
	 */
	val = ifp->if_mtu + ETHER_HDR_LEN + ETHER_VLAN_ENCAP_LEN +
	    ETHER_CRC_LEN;
	FUNC3(sc, AE_MTU_REG, val);

	/*
	 * Configure cut-through threshold.
	 */
	FUNC4(sc, AE_CUT_THRESH_REG, AE_CUT_THRESH_DEFAULT);

	/*
	 * Configure flow control.
	 */
	FUNC3(sc, AE_FLOW_THRESH_HI_REG, (AE_RXD_COUNT_DEFAULT / 8) * 7);
	FUNC3(sc, AE_FLOW_THRESH_LO_REG, (AE_RXD_COUNT_MIN / 8) >
	    (AE_RXD_COUNT_DEFAULT / 12) ? (AE_RXD_COUNT_MIN / 8) :
	    (AE_RXD_COUNT_DEFAULT / 12));

	/*
	 * Init mailboxes.
	 */
	sc->txd_cur = sc->rxd_cur = 0;
	sc->txs_ack = sc->txd_ack = 0;
	sc->rxd_cur = 0;
	FUNC3(sc, AE_MB_TXD_IDX_REG, sc->txd_cur);
	FUNC3(sc, AE_MB_RXD_IDX_REG, sc->rxd_cur);

	sc->tx_inproc = 0;	/* Number of packets the chip processes now. */
	sc->flags |= AE_FLAG_TXAVAIL;	/* Free Tx's available. */

	/*
	 * Enable DMA.
	 */
	FUNC2(sc, AE_DMAREAD_REG, AE_DMAREAD_EN);
	FUNC2(sc, AE_DMAWRITE_REG, AE_DMAWRITE_EN);

	/*
	 * Check if everything is OK.
	 */
	val = FUNC1(sc, AE_ISR_REG);
	if ((val & AE_ISR_PHY_LINKDOWN) != 0) {
		FUNC19(sc->dev, "Initialization failed.\n");
		return (ENXIO);
	}

	/*
	 * Clear interrupt status.
	 */
	FUNC4(sc, AE_ISR_REG, 0x3fffffff);
	FUNC4(sc, AE_ISR_REG, 0x0);

	/*
	 * Enable interrupts.
	 */
	val = FUNC1(sc, AE_MASTER_REG);
	FUNC4(sc, AE_MASTER_REG, val | AE_MASTER_MANUAL_INT);
	FUNC4(sc, AE_IMR_REG, AE_IMR_DEFAULT);

	/*
	 * Disable WOL.
	 */
	FUNC4(sc, AE_WOL_REG, 0);

	/*
	 * Configure MAC.
	 */
	val = AE_MAC_TX_CRC_EN | AE_MAC_TX_AUTOPAD |
	    AE_MAC_FULL_DUPLEX | AE_MAC_CLK_PHY |
	    AE_MAC_TX_FLOW_EN | AE_MAC_RX_FLOW_EN |
	    ((AE_HALFBUF_DEFAULT << AE_HALFBUF_SHIFT) & AE_HALFBUF_MASK) |
	    ((AE_MAC_PREAMBLE_DEFAULT << AE_MAC_PREAMBLE_SHIFT) &
	    AE_MAC_PREAMBLE_MASK);
	FUNC4(sc, AE_MAC_REG, val);

	/*
	 * Configure Rx MAC.
	 */
	FUNC12(sc);
	FUNC13(sc);

	/*
	 * Enable Tx/Rx.
	 */
	val = FUNC1(sc, AE_MAC_REG);
	FUNC4(sc, AE_MAC_REG, val | AE_MAC_TX_EN | AE_MAC_RX_EN);

	sc->flags &= ~AE_FLAG_LINK;
	FUNC20(mii);	/* Switch to the current media. */

	FUNC17(&sc->tick_ch, hz, ae_tick, sc);

	ifp->if_drv_flags |= IFF_DRV_RUNNING;
	ifp->if_drv_flags &= ~IFF_DRV_OACTIVE;

#ifdef AE_DEBUG
	device_printf(sc->dev, "Initialization complete.\n");
#endif

	return (0);
}
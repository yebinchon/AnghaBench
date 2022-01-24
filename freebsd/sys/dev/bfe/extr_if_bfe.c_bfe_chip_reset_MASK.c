#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_int32_t ;
struct bfe_softc {int bfe_tx_dma; int bfe_rx_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bfe_softc*,int /*<<< orphan*/ ,int) ; 
 int BFE_CLOCK ; 
 int BFE_CTRL_CRC32_ENAB ; 
 int BFE_CTRL_LED ; 
 int BFE_CTRL_PDOWN ; 
 int /*<<< orphan*/  BFE_DEVCTRL ; 
 int /*<<< orphan*/  BFE_DMARX_ADDR ; 
 int /*<<< orphan*/  BFE_DMARX_CTRL ; 
 int /*<<< orphan*/  BFE_DMARX_STAT ; 
 int /*<<< orphan*/  BFE_DMATX_ADDR ; 
 int /*<<< orphan*/  BFE_DMATX_CTRL ; 
 int /*<<< orphan*/  BFE_ENET_CTRL ; 
 int BFE_ENET_DISABLE ; 
 int BFE_ENET_EPSEL ; 
 int BFE_EPR ; 
 int /*<<< orphan*/  BFE_INTVEC_ENET0 ; 
 int BFE_IPP ; 
 int BFE_LAZY_FC_MASK ; 
 int BFE_LAZY_FC_SHIFT ; 
 int /*<<< orphan*/  FUNC1 (struct bfe_softc*) ; 
 int /*<<< orphan*/  BFE_MAC_CTRL ; 
 int /*<<< orphan*/  BFE_MDIO_CTRL ; 
 int /*<<< orphan*/  FUNC2 (struct bfe_softc*,int /*<<< orphan*/ ,int) ; 
 int BFE_PCI_DMA ; 
 int /*<<< orphan*/  BFE_RCV_LAZY ; 
 int BFE_REJECT ; 
 int BFE_RESET ; 
 int /*<<< orphan*/  BFE_RXMAXLEN ; 
 int BFE_RX_CTRL_ENABLE ; 
 int BFE_RX_CTRL_ROSHIFT ; 
 int BFE_RX_OFFSET ; 
 int /*<<< orphan*/  BFE_SBTMSLOW ; 
 int BFE_STAT_EMASK ; 
 int BFE_STAT_SIDLE ; 
 int /*<<< orphan*/  BFE_TXMAXLEN ; 
 int BFE_TX_CTRL_ENABLE ; 
 int /*<<< orphan*/  BFE_TX_WMARK ; 
 int FUNC3 (struct bfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bfe_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int ETHER_MAX_LEN ; 
 int /*<<< orphan*/  FUNC6 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct bfe_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct bfe_softc*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC12(struct bfe_softc *sc)
{
	u_int32_t val;

	FUNC1(sc);

	/* Set the interrupt vector for the enet core */
	FUNC8(sc, BFE_INTVEC_ENET0);

	/* is core up? */
	val = FUNC3(sc, BFE_SBTMSLOW) &
	    (BFE_RESET | BFE_REJECT | BFE_CLOCK);
	if (val == BFE_CLOCK) {
		/* It is, so shut it down */
		FUNC4(sc, BFE_RCV_LAZY, 0);
		FUNC4(sc, BFE_ENET_CTRL, BFE_ENET_DISABLE);
		FUNC11(sc, BFE_ENET_CTRL, BFE_ENET_DISABLE, 100, 1);
		FUNC4(sc, BFE_DMATX_CTRL, 0);
		if (FUNC3(sc, BFE_DMARX_STAT) & BFE_STAT_EMASK)
			FUNC11(sc, BFE_DMARX_STAT, BFE_STAT_SIDLE,
			    100, 0);
		FUNC4(sc, BFE_DMARX_CTRL, 0);
	}

	FUNC7(sc);
	FUNC6(sc);

	/*
	 * We want the phy registers to be accessible even when
	 * the driver is "downed" so initialize MDC preamble, frequency,
	 * and whether internal or external phy here.
	 */

	/* 4402 has 62.5Mhz SB clock and internal phy */
	FUNC4(sc, BFE_MDIO_CTRL, 0x8d);

	/* Internal or external PHY? */
	val = FUNC3(sc, BFE_DEVCTRL);
	if (!(val & BFE_IPP))
		FUNC4(sc, BFE_ENET_CTRL, BFE_ENET_EPSEL);
	else if (FUNC3(sc, BFE_DEVCTRL) & BFE_EPR) {
		FUNC0(sc, BFE_DEVCTRL, ~BFE_EPR);
		FUNC5(100);
	}

	/* Enable CRC32 generation and set proper LED modes */
	FUNC2(sc, BFE_MAC_CTRL, BFE_CTRL_CRC32_ENAB | BFE_CTRL_LED);

	/* Reset or clear powerdown control bit  */
	FUNC0(sc, BFE_MAC_CTRL, ~BFE_CTRL_PDOWN);

	FUNC4(sc, BFE_RCV_LAZY, ((1 << BFE_LAZY_FC_SHIFT) &
				BFE_LAZY_FC_MASK));

	/*
	 * We don't want lazy interrupts, so just send them at
	 * the end of a frame, please
	 */
	FUNC2(sc, BFE_RCV_LAZY, 0);

	/* Set max lengths, accounting for VLAN tags */
	FUNC4(sc, BFE_RXMAXLEN, ETHER_MAX_LEN+32);
	FUNC4(sc, BFE_TXMAXLEN, ETHER_MAX_LEN+32);

	/* Set watermark XXX - magic */
	FUNC4(sc, BFE_TX_WMARK, 56);

	/*
	 * Initialise DMA channels
	 * - not forgetting dma addresses need to be added to BFE_PCI_DMA
	 */
	FUNC4(sc, BFE_DMATX_CTRL, BFE_TX_CTRL_ENABLE);
	FUNC4(sc, BFE_DMATX_ADDR, sc->bfe_tx_dma + BFE_PCI_DMA);

	FUNC4(sc, BFE_DMARX_CTRL, (BFE_RX_OFFSET << BFE_RX_CTRL_ROSHIFT) |
			BFE_RX_CTRL_ENABLE);
	FUNC4(sc, BFE_DMARX_ADDR, sc->bfe_rx_dma + BFE_PCI_DMA);

	FUNC9(sc);
	FUNC10(sc);
}
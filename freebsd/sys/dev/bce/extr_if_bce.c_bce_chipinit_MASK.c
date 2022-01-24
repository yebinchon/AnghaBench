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
typedef  int u32 ;
struct bce_softc {int bce_flags; int bus_speed_mhz; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bce_softc*) ; 
 scalar_t__ BCE_CHIP_ID_5706_A0 ; 
 scalar_t__ BCE_CHIP_ID_5709_A1 ; 
 scalar_t__ FUNC1 (struct bce_softc*) ; 
 scalar_t__ BCE_CHIP_NUM_5706 ; 
 scalar_t__ BCE_CHIP_NUM_5709 ; 
 int /*<<< orphan*/  BCE_DMA_CONFIG ; 
 int BCE_DMA_CONFIG_CNTL_BYTE_SWAP ; 
 int BCE_DMA_CONFIG_CNTL_PCI_COMP_DLY ; 
 int BCE_DMA_CONFIG_CNTL_PING_PONG_DMA ; 
 int BCE_DMA_CONFIG_CNTL_WORD_SWAP ; 
 int BCE_DMA_CONFIG_DATA_BYTE_SWAP ; 
 int BCE_DMA_CONFIG_DATA_WORD_SWAP ; 
 int BCE_DMA_CONFIG_PCI_FAST_CLK_CMP ; 
 int BCE_MFW_ENABLE_FLAG ; 
 int /*<<< orphan*/  BCE_MISC_ENABLE_SET_BITS ; 
 int BCE_MISC_ENABLE_SET_BITS_HOST_COALESCE_ENABLE ; 
 int BCE_MISC_ENABLE_STATUS_BITS_CONTEXT_ENABLE ; 
 int BCE_MISC_ENABLE_STATUS_BITS_RX_V2P_ENABLE ; 
 int /*<<< orphan*/  BCE_MQ_CONFIG ; 
 int BCE_MQ_CONFIG_BIN_MQ_MODE ; 
 int BCE_MQ_CONFIG_HALT_DIS ; 
 int BCE_MQ_CONFIG_KNL_BYP_BLK_SIZE ; 
 int BCE_MQ_CONFIG_KNL_BYP_BLK_SIZE_256 ; 
 int /*<<< orphan*/  BCE_MQ_KNL_BYP_WIND_START ; 
 int /*<<< orphan*/  BCE_MQ_KNL_WIND_END ; 
 int BCE_PCIX_FLAG ; 
 int /*<<< orphan*/  BCE_RPM_MGMT_PKT_CTRL ; 
 int BCE_RPM_MGMT_PKT_CTRL_MGMT_EN ; 
 int /*<<< orphan*/  BCE_RV2P_CONFIG ; 
 int /*<<< orphan*/  BCE_RXP_PM_CTRL ; 
 int /*<<< orphan*/  BCE_TBDR_CONFIG ; 
 int BCE_TBDR_CONFIG_PAGE_SIZE ; 
 int /*<<< orphan*/  BCE_VERBOSE_RESET ; 
 int BCM_PAGE_BITS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int DMA_READ_CHANS ; 
 int DMA_WRITE_CHANS ; 
 int MAX_CID_CNT ; 
 int MB_KERNEL_CTX_SIZE ; 
 int FUNC4 (struct bce_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bce_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bce_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct bce_softc*) ; 
 int FUNC9 (struct bce_softc*) ; 
 int FUNC10 (struct bce_softc*) ; 

__attribute__((used)) static int
FUNC11(struct bce_softc *sc)
{
	u32 val;
	int rc = 0;

	FUNC2(BCE_VERBOSE_RESET);

	FUNC7(sc);

	/*
	 * Initialize DMA byte/word swapping, configure the number of DMA
	 * channels and PCI clock compensation delay.
	 */
	val = BCE_DMA_CONFIG_DATA_BYTE_SWAP |
	    BCE_DMA_CONFIG_DATA_WORD_SWAP |
#if BYTE_ORDER == BIG_ENDIAN
	    BCE_DMA_CONFIG_CNTL_BYTE_SWAP |
#endif
	    BCE_DMA_CONFIG_CNTL_WORD_SWAP |
	    DMA_READ_CHANS << 12 |
	    DMA_WRITE_CHANS << 16;

	val |= (0x2 << 20) | BCE_DMA_CONFIG_CNTL_PCI_COMP_DLY;

	if ((sc->bce_flags & BCE_PCIX_FLAG) && (sc->bus_speed_mhz == 133))
		val |= BCE_DMA_CONFIG_PCI_FAST_CLK_CMP;

	/*
	 * This setting resolves a problem observed on certain Intel PCI
	 * chipsets that cannot handle multiple outstanding DMA operations.
	 * See errata E9_5706A1_65.
	 */
	if ((FUNC1(sc) == BCE_CHIP_NUM_5706) &&
	    (FUNC0(sc) != BCE_CHIP_ID_5706_A0) &&
	    !(sc->bce_flags & BCE_PCIX_FLAG))
		val |= BCE_DMA_CONFIG_CNTL_PING_PONG_DMA;

	FUNC5(sc, BCE_DMA_CONFIG, val);

	/* Enable the RX_V2P and Context state machines before access. */
	FUNC5(sc, BCE_MISC_ENABLE_SET_BITS,
	    BCE_MISC_ENABLE_SET_BITS_HOST_COALESCE_ENABLE |
	    BCE_MISC_ENABLE_STATUS_BITS_RX_V2P_ENABLE |
	    BCE_MISC_ENABLE_STATUS_BITS_CONTEXT_ENABLE);

	/* Initialize context mapping and zero out the quick contexts. */
	if ((rc = FUNC9(sc)) != 0)
		goto bce_chipinit_exit;

	/* Initialize the on-boards CPUs */
	FUNC8(sc);

	/* Enable management frames (NC-SI) to flow to the MCP. */
	if (sc->bce_flags & BCE_MFW_ENABLE_FLAG) {
		val = FUNC4(sc, BCE_RPM_MGMT_PKT_CTRL) | BCE_RPM_MGMT_PKT_CTRL_MGMT_EN;
		FUNC5(sc, BCE_RPM_MGMT_PKT_CTRL, val);
	}

	/* Prepare NVRAM for access. */
	if ((rc = FUNC10(sc)) != 0)
		goto bce_chipinit_exit;

	/* Set the kernel bypass block size */
	val = FUNC4(sc, BCE_MQ_CONFIG);
	val &= ~BCE_MQ_CONFIG_KNL_BYP_BLK_SIZE;
	val |= BCE_MQ_CONFIG_KNL_BYP_BLK_SIZE_256;

	/* Enable bins used on the 5709. */
	if (FUNC1(sc) == BCE_CHIP_NUM_5709) {
		val |= BCE_MQ_CONFIG_BIN_MQ_MODE;
		if (FUNC0(sc) == BCE_CHIP_ID_5709_A1)
			val |= BCE_MQ_CONFIG_HALT_DIS;
	}

	FUNC5(sc, BCE_MQ_CONFIG, val);

	val = 0x10000 + (MAX_CID_CNT * MB_KERNEL_CTX_SIZE);
	FUNC5(sc, BCE_MQ_KNL_BYP_WIND_START, val);
	FUNC5(sc, BCE_MQ_KNL_WIND_END, val);

	/* Set the page size and clear the RV2P processor stall bits. */
	val = (BCM_PAGE_BITS - 8) << 24;
	FUNC5(sc, BCE_RV2P_CONFIG, val);

	/* Configure page size. */
	val = FUNC4(sc, BCE_TBDR_CONFIG);
	val &= ~BCE_TBDR_CONFIG_PAGE_SIZE;
	val |= (BCM_PAGE_BITS - 8) << 24 | 0x40;
	FUNC5(sc, BCE_TBDR_CONFIG, val);

	/* Set the perfect match control register to default. */
	FUNC6(sc, BCE_RXP_PM_CTRL, 0);

bce_chipinit_exit:
	FUNC3(BCE_VERBOSE_RESET);

	return(rc);
}
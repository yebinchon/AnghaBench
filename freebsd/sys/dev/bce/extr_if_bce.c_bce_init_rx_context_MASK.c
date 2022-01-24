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
struct bce_softc {int bce_flags; int /*<<< orphan*/ * rx_bd_chain_paddr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bce_softc*) ; 
 scalar_t__ BCE_CHIP_NUM_5709 ; 
 int BCE_L2CTX_RX_BD_PRE_READ_SHIFT ; 
 int /*<<< orphan*/  BCE_L2CTX_RX_CTX_TYPE ; 
 int BCE_L2CTX_RX_CTX_TYPE_CTX_BD_CHN_TYPE_VALUE ; 
 int BCE_L2CTX_RX_CTX_TYPE_SIZE_L2 ; 
 int BCE_L2CTX_RX_HI_WATER_MARK_SCALE ; 
 int BCE_L2CTX_RX_HI_WATER_MARK_SHIFT ; 
 int BCE_L2CTX_RX_LO_WATER_MARK_DEFAULT ; 
 int BCE_L2CTX_RX_LO_WATER_MARK_SCALE ; 
 int BCE_L2CTX_RX_LO_WATER_MARK_SHIFT ; 
 int /*<<< orphan*/  BCE_L2CTX_RX_NX_BDHADDR_HI ; 
 int /*<<< orphan*/  BCE_L2CTX_RX_NX_BDHADDR_LO ; 
 int /*<<< orphan*/  BCE_MQ_MAP_L2_5 ; 
 int BCE_MQ_MAP_L2_5_ARM ; 
 int BCE_USING_TX_FLOW_CONTROL ; 
 int BCE_VERBOSE_CTX ; 
 int BCE_VERBOSE_RECV ; 
 int BCE_VERBOSE_RESET ; 
 int /*<<< orphan*/  FUNC3 (struct bce_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct bce_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct bce_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RX_CID ; 
 int USABLE_RX_BD_ALLOC ; 

__attribute__((used)) static void
FUNC9(struct bce_softc *sc)
{
	u32 val;

	FUNC4(BCE_VERBOSE_RESET | BCE_VERBOSE_RECV | BCE_VERBOSE_CTX);

	/* Init the type, size, and BD cache levels for the RX context. */
	val = BCE_L2CTX_RX_CTX_TYPE_CTX_BD_CHN_TYPE_VALUE |
	    BCE_L2CTX_RX_CTX_TYPE_SIZE_L2 |
	    (0x02 << BCE_L2CTX_RX_BD_PRE_READ_SHIFT);

	/*
	 * Set the level for generating pause frames
	 * when the number of available rx_bd's gets
	 * too low (the low watermark) and the level
	 * when pause frames can be stopped (the high
	 * watermark).
	 */
	if (FUNC2(sc) == BCE_CHIP_NUM_5709) {
		u32 lo_water, hi_water;

		if (sc->bce_flags & BCE_USING_TX_FLOW_CONTROL) {
			lo_water = BCE_L2CTX_RX_LO_WATER_MARK_DEFAULT;
		} else {
			lo_water = 0;
		}

		if (lo_water >= USABLE_RX_BD_ALLOC) {
			lo_water = 0;
		}

		hi_water = USABLE_RX_BD_ALLOC / 4;

		if (hi_water <= lo_water) {
			lo_water = 0;
		}

		lo_water /= BCE_L2CTX_RX_LO_WATER_MARK_SCALE;
		hi_water /= BCE_L2CTX_RX_HI_WATER_MARK_SCALE;

		if (hi_water > 0xf)
			hi_water = 0xf;
		else if (hi_water == 0)
			lo_water = 0;

		val |= (lo_water << BCE_L2CTX_RX_LO_WATER_MARK_SHIFT) |
		    (hi_water << BCE_L2CTX_RX_HI_WATER_MARK_SHIFT);
	}

	FUNC3(sc, FUNC6(RX_CID), BCE_L2CTX_RX_CTX_TYPE, val);

	/* Setup the MQ BIN mapping for l2_ctx_host_bseq. */
	if (FUNC2(sc) == BCE_CHIP_NUM_5709) {
		val = FUNC7(sc, BCE_MQ_MAP_L2_5);
		FUNC8(sc, BCE_MQ_MAP_L2_5, val | BCE_MQ_MAP_L2_5_ARM);
	}

	/* Point the hardware to the first page in the chain. */
	val = FUNC0(sc->rx_bd_chain_paddr[0]);
	FUNC3(sc, FUNC6(RX_CID), BCE_L2CTX_RX_NX_BDHADDR_HI, val);
	val = FUNC1(sc->rx_bd_chain_paddr[0]);
	FUNC3(sc, FUNC6(RX_CID), BCE_L2CTX_RX_NX_BDHADDR_LO, val);

	FUNC5(BCE_VERBOSE_RESET | BCE_VERBOSE_RECV | BCE_VERBOSE_CTX);
}
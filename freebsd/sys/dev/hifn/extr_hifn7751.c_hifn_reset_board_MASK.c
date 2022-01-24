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
struct hifn_softc {int sc_flags; int /*<<< orphan*/ * sc_dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  HIFN_1_7811_MIPSRST ; 
 int /*<<< orphan*/  HIFN_1_DMA_CNFG ; 
 int /*<<< orphan*/  HIFN_1_DMA_CNFG2 ; 
 int HIFN_DMACNFG2_INIT_READ_BURST_SHIFT ; 
 int HIFN_DMACNFG2_INIT_WRITE_BURST_SHIFT ; 
 int HIFN_DMACNFG2_TGT_READ_BURST_SHIFT ; 
 int HIFN_DMACNFG2_TGT_WRITE_BURST_SHIFT ; 
 int HIFN_DMACNFG_DMARESET ; 
 int HIFN_DMACNFG_MODE ; 
 int HIFN_DMACNFG_MSTRESET ; 
 int HIFN_IS_7811 ; 
 int HIFN_MIPSRST_CRAMINIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct hifn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hifn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct hifn_softc*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(struct hifn_softc *sc, int full)
{
	u_int32_t reg;

	/*
	 * Set polling in the DMA configuration register to zero.  0x7 avoids
	 * resetting the board and zeros out the other fields.
	 */
	FUNC3(sc, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MSTRESET |
	    HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);

	/*
	 * Now that polling has been disabled, we have to wait 1 ms
	 * before resetting the board.
	 */
	FUNC0(1000);

	/* Reset the DMA unit */
	if (full) {
		FUNC3(sc, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MODE);
		FUNC0(1000);
	} else {
		FUNC3(sc, HIFN_1_DMA_CNFG,
		    HIFN_DMACNFG_MODE | HIFN_DMACNFG_MSTRESET);
		FUNC6(sc);
	}

	FUNC1(sc->sc_dma != NULL, ("hifn_reset_board: null DMA tag!"));
	FUNC4(sc->sc_dma, sizeof(*sc->sc_dma));

	/* Bring dma unit out of reset */
	FUNC3(sc, HIFN_1_DMA_CNFG, HIFN_DMACNFG_MSTRESET |
	    HIFN_DMACNFG_DMARESET | HIFN_DMACNFG_MODE);

	FUNC5(sc);
	FUNC7(sc);

	if (sc->sc_flags & HIFN_IS_7811) {
		for (reg = 0; reg < 1000; reg++) {
			if (FUNC2(sc, HIFN_1_7811_MIPSRST) &
			    HIFN_MIPSRST_CRAMINIT)
				break;
			FUNC0(1000);
		}
		if (reg == 1000)
			FUNC8(": cram init timeout\n");
	} else {
	  /* set up DMA configuration register #2 */
	  /* turn off all PK and BAR0 swaps */
	  FUNC3(sc, HIFN_1_DMA_CNFG2,
		      (3 << HIFN_DMACNFG2_INIT_WRITE_BURST_SHIFT)|
		      (3 << HIFN_DMACNFG2_INIT_READ_BURST_SHIFT)|
		      (2 << HIFN_DMACNFG2_TGT_WRITE_BURST_SHIFT)|
		      (2 << HIFN_DMACNFG2_TGT_READ_BURST_SHIFT));
	}
		      
}
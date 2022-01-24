#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int chip_id; } ;
struct bhnd_pmu_softc {TYPE_1__ cid; } ;
struct TYPE_5__ {int freq; int xf; int wbint; int wbfrac; } ;
typedef  TYPE_2__ pmu0_xtaltab0_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_CCS_HTAVAIL ; 
#define  BHND_CHIPID_BCM4328 129 
#define  BHND_CHIPID_BCM5354 128 
 int /*<<< orphan*/  BHND_PMU0_PLL0_PC0_DIV_ARM_88MHZ ; 
 int BHND_PMU0_PLL0_PC0_PDIV_FREQ ; 
 int BHND_PMU0_PLL0_PC0_PDIV_MASK ; 
 int BHND_PMU0_PLL0_PC1_STOP_MOD ; 
 int /*<<< orphan*/  BHND_PMU0_PLL0_PC1_WILD_FRAC ; 
 int BHND_PMU0_PLL0_PC1_WILD_FRAC_MASK ; 
 int /*<<< orphan*/  BHND_PMU0_PLL0_PC1_WILD_INT ; 
 int BHND_PMU0_PLL0_PC1_WILD_INT_MASK ; 
 int /*<<< orphan*/  BHND_PMU0_PLL0_PC2_WILD_INT ; 
 int BHND_PMU0_PLL0_PC2_WILD_INT_MASK ; 
 int /*<<< orphan*/  BHND_PMU0_PLL0_PLLCTL0 ; 
 int /*<<< orphan*/  BHND_PMU0_PLL0_PLLCTL1 ; 
 int /*<<< orphan*/  BHND_PMU0_PLL0_PLLCTL2 ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BHND_PMU_CTRL ; 
 int /*<<< orphan*/  BHND_PMU_CTRL_ILP_DIV ; 
 int BHND_PMU_CTRL_ILP_DIV_MASK ; 
 int /*<<< orphan*/  BHND_PMU_CTRL_XTALFREQ ; 
 int BHND_PMU_CTRL_XTALFREQ_MASK ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BHND_PMU_MAX_RES_MASK ; 
 int /*<<< orphan*/  BHND_PMU_MIN_RES_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int) ; 
 size_t PMU0_XTAL0_DEFAULT ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct bhnd_pmu_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RES4328_BB_PLL_PU ; 
 int /*<<< orphan*/  RES5354_BB_PLL_PU ; 
 int /*<<< orphan*/  FUNC9 (struct bhnd_pmu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 TYPE_2__* pmu0_xtaltab0 ; 
 int tmp ; 

__attribute__((used)) static void
FUNC11(struct bhnd_pmu_softc *sc, uint32_t xtal)
{
	const pmu0_xtaltab0_t	*xt;
	uint32_t		 pll_data, pll_mask;
	uint32_t		 pll_res;
	uint32_t		 pmu_ctrl;
	uint32_t		 xf;

	/* Use h/w default PLL config */
	if (xtal == 0) {
		FUNC7(sc, "Unspecified xtal frequency, skipping PLL "
		    "configuration\n");
		return;
	}

	/* Find the frequency in the table */
	for (xt = pmu0_xtaltab0; xt->freq; xt ++) {
		if (xt->freq == xtal)
			break;
	}

	if (xt->freq == 0)
		xt = &pmu0_xtaltab0[PMU0_XTAL0_DEFAULT];

	FUNC7(sc, "XTAL %d.%d MHz (%d)\n", xtal / 1000, xtal % 1000,
	    xt->xf);

	/* Check current PLL state */
	pmu_ctrl = FUNC3(sc, BHND_PMU_CTRL);
	xf = FUNC1(pmu_ctrl, BHND_PMU_CTRL_XTALFREQ);
	if (xf == xt->xf) {
#ifdef BCMUSBDEV
		if (sc->cid.chip_id == BHND_CHIPID_BCM4328) {
			bhnd_pmu0_sbclk4328(sc,
			    BHND_PMU0_PLL0_PC0_DIV_ARM_88MHZ);
			return;
		}
#endif	/* BCMUSBDEV */

		FUNC7(sc, "PLL already programmed for %d.%d MHz\n",
		         xt->freq / 1000, xt->freq % 1000);
		return;
	}

	if (xf != 0) {
		FUNC7(sc,
		    "Reprogramming PLL for %d.%d MHz (was %d.%dMHz)\n",
		    xt->freq / 1000, xt->freq % 1000,
		    pmu0_xtaltab0[tmp-1].freq / 1000, 
		    pmu0_xtaltab0[tmp-1].freq % 1000);
	} else {
		FUNC7(sc, "Programming PLL for %d.%d MHz\n",
		    xt->freq / 1000, xt->freq % 1000);
	}

	/* Make sure the PLL is off */
	switch (sc->cid.chip_id) {
	case BHND_CHIPID_BCM4328:
		pll_res = FUNC6(RES4328_BB_PLL_PU);
		break;
	case BHND_CHIPID_BCM5354:
		pll_res = FUNC6(RES5354_BB_PLL_PU);
		break;
	default:
		FUNC10("unsupported chipid %#hx\n", sc->cid.chip_id);
	}
	FUNC0(sc, BHND_PMU_MIN_RES_MASK, ~pll_res);
	FUNC0(sc, BHND_PMU_MAX_RES_MASK, ~pll_res);

	/* Wait for HT clock to shutdown. */
	FUNC8(sc, 0, BHND_CCS_HTAVAIL);

	FUNC7(sc, "Done masking\n");

	/* Write PDIV in pllcontrol[0] */
	if (xt->freq >= BHND_PMU0_PLL0_PC0_PDIV_FREQ) {
		FUNC2(sc, BHND_PMU0_PLL0_PLLCTL0,
		    BHND_PMU0_PLL0_PC0_PDIV_MASK, BHND_PMU0_PLL0_PC0_PDIV_MASK);
	} else {
		FUNC2(sc, BHND_PMU0_PLL0_PLLCTL0, 0,
		    BHND_PMU0_PLL0_PC0_PDIV_MASK);
	}

	/* Write WILD in pllcontrol[1] */
	pll_data =
	    FUNC4(xt->wbint, BHND_PMU0_PLL0_PC1_WILD_INT) |
	    FUNC4(xt->wbfrac, BHND_PMU0_PLL0_PC1_WILD_FRAC);

	if (xt->wbfrac == 0) {
		pll_data |= BHND_PMU0_PLL0_PC1_STOP_MOD;
	} else {
		pll_data &= ~BHND_PMU0_PLL0_PC1_STOP_MOD;
	}
	
	pll_mask = 
	    BHND_PMU0_PLL0_PC1_WILD_INT_MASK |
	    BHND_PMU0_PLL0_PC1_WILD_FRAC_MASK;

	FUNC2(sc, BHND_PMU0_PLL0_PLLCTL1, pll_data, pll_mask);

	/* Write WILD in pllcontrol[2] */
	pll_data = FUNC4(xt->wbint, BHND_PMU0_PLL0_PC2_WILD_INT);
	pll_mask = BHND_PMU0_PLL0_PC2_WILD_INT_MASK;
	FUNC2(sc, BHND_PMU0_PLL0_PLLCTL2, pll_data, pll_mask);

	FUNC7(sc, "Done pll\n");

	/* Write XtalFreq. Set the divisor also. */
	pmu_ctrl = FUNC3(sc, BHND_PMU_CTRL);
	pmu_ctrl &= ~(BHND_PMU_CTRL_ILP_DIV_MASK|BHND_PMU_CTRL_XTALFREQ_MASK);

	pmu_ctrl |= FUNC4(((xt->freq + 127) / 128) - 1,
	    BHND_PMU_CTRL_ILP_DIV);
	pmu_ctrl |= FUNC4(xt->xf, BHND_PMU_CTRL_XTALFREQ);

	FUNC5(sc, BHND_PMU_CTRL, pmu_ctrl);
}
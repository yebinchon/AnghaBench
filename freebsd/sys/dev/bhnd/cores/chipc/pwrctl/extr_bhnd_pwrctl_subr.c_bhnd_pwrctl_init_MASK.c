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
typedef  scalar_t__ uint32_t ;
struct bhnd_pwrctl_softc {int /*<<< orphan*/  res; } ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_CLOCK_HT ; 
 scalar_t__ CHIPC_FREF_DELAY ; 
 scalar_t__ CHIPC_ILP_DIV_1MHZ ; 
 scalar_t__ CHIPC_PLL_DELAY ; 
 int /*<<< orphan*/  CHIPC_PLL_FREFSEL_DELAY ; 
 int /*<<< orphan*/  CHIPC_PLL_ON_DELAY ; 
 scalar_t__ CHIPC_SCC_SS_XTAL ; 
 scalar_t__ CHIPC_SYCC_CD_MASK ; 
 scalar_t__ CHIPC_SYCC_CD_SHIFT ; 
 int /*<<< orphan*/  CHIPC_SYS_CLK_CTL ; 
 scalar_t__ CHIPC_XTAL_ON_DELAY ; 
 int /*<<< orphan*/  FORCE_HT ; 
 int /*<<< orphan*/  INSTACLK_CTL ; 
 scalar_t__ FUNC0 (struct bhnd_pwrctl_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct bhnd_pwrctl_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct bhnd_pwrctl_softc*,int) ; 
 scalar_t__ FUNC4 (struct bhnd_pwrctl_softc*) ; 

int
FUNC5(struct bhnd_pwrctl_softc *sc)
{
	uint32_t	clkctl;
	uint32_t	pll_delay, slowclk, slowmaxfreq;
	uint32_t 	pll_on_delay, fref_sel_delay;
	int		error;

	pll_delay = CHIPC_PLL_DELAY;

	/* set all Instaclk chip ILP to 1 MHz */
	if (FUNC0(sc, INSTACLK_CTL)) {
		clkctl = (CHIPC_ILP_DIV_1MHZ << CHIPC_SYCC_CD_SHIFT);
		clkctl &= CHIPC_SYCC_CD_MASK;
		FUNC1(sc->res, CHIPC_SYS_CLK_CTL, clkctl);
	}

	/* 
	 * Initialize PLL/FREF delays.
	 * 
	 * If the slow clock is not sourced by the xtal, include the
	 * delay required to bring it up.
	 */
	slowclk = FUNC4(sc);
	if (slowclk != CHIPC_SCC_SS_XTAL)
		pll_delay += CHIPC_XTAL_ON_DELAY;

	/* Starting with 4318 it is ILP that is used for the delays */
	if (FUNC0(sc, INSTACLK_CTL))
		slowmaxfreq = FUNC3(sc, false);
	else
		slowmaxfreq = FUNC3(sc, true);

	pll_on_delay = ((slowmaxfreq * pll_delay) + 999999) / 1000000;
	fref_sel_delay = ((slowmaxfreq * CHIPC_FREF_DELAY) + 999999) / 1000000;

	FUNC1(sc->res, CHIPC_PLL_ON_DELAY, pll_on_delay);
	FUNC1(sc->res, CHIPC_PLL_FREFSEL_DELAY, fref_sel_delay);

	/* If required, force HT */
	if (FUNC0(sc, FORCE_HT)) {
		if ((error = FUNC2(sc, BHND_CLOCK_HT)))
			return (error);
	}

	return (0);
}
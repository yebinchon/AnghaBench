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
typedef  int u_int ;
struct smc_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CR ; 
 int CR_EPH_POWER_EN ; 
 int /*<<< orphan*/  CTR ; 
 int CTR_AUTO_RELEASE ; 
 int CTR_LE_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MMUCR ; 
 int MMUCR_CMD_MMU_RESET ; 
 int /*<<< orphan*/  MSK ; 
 int /*<<< orphan*/  RCR ; 
 int RCR_SOFT_RST ; 
 int /*<<< orphan*/  FUNC1 (struct smc_softc*) ; 
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  FUNC2 (struct smc_softc*) ; 
 int FUNC3 (struct smc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smc_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct smc_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(struct smc_softc *sc)
{
	u_int	ctr;

	FUNC1(sc);

	FUNC4(sc, 2);

	/*
	 * Mask all interrupts.
	 */
	FUNC5(sc, MSK, 0);

	/*
	 * Tell the device to reset.
	 */
	FUNC4(sc, 0);
	FUNC6(sc, RCR, RCR_SOFT_RST);

	/*
	 * Set up the configuration register.
	 */
	FUNC4(sc, 1);
	FUNC6(sc, CR, CR_EPH_POWER_EN);
	FUNC0(1);

	/*
	 * Turn off transmit and receive.
	 */
	FUNC4(sc, 0);
	FUNC6(sc, TCR, 0);
	FUNC6(sc, RCR, 0);

	/*
	 * Set up the control register.
	 */
	FUNC4(sc, 1);
	ctr = FUNC3(sc, CTR);
	ctr |= CTR_LE_ENABLE | CTR_AUTO_RELEASE;
	FUNC6(sc, CTR, ctr);

	/*
	 * Reset the MMU.
	 */
	FUNC4(sc, 2);
	FUNC2(sc);
	FUNC6(sc, MMUCR, MMUCR_CMD_MMU_RESET);
}
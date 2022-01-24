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
struct sis_softc {scalar_t__ sis_type; int /*<<< orphan*/  sis_dev; } ;

/* Variables and functions */
 int FUNC0 (struct sis_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sis_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  NS_CLKRUN ; 
 int /*<<< orphan*/  NS_CLKRUN_PMESTS ; 
 int /*<<< orphan*/  SIS_CSR ; 
 int SIS_CSR_RESET ; 
 int /*<<< orphan*/  SIS_PWRMAN_CTL ; 
 int /*<<< orphan*/  FUNC3 (struct sis_softc*,int /*<<< orphan*/ ,int) ; 
 int SIS_TIMEOUT ; 
 scalar_t__ SIS_TYPE_83815 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(struct sis_softc *sc)
{
	int		i;

	FUNC3(sc, SIS_CSR, SIS_CSR_RESET);

	for (i = 0; i < SIS_TIMEOUT; i++) {
		if (!(FUNC0(sc, SIS_CSR) & SIS_CSR_RESET))
			break;
	}

	if (i == SIS_TIMEOUT)
		FUNC4(sc->sis_dev, "reset never completed\n");

	/* Wait a little while for the chip to get its brains in order. */
	FUNC2(1000);

	/*
	 * If this is a NetSemi chip, make sure to clear
	 * PME mode.
	 */
	if (sc->sis_type == SIS_TYPE_83815) {
		FUNC1(sc, NS_CLKRUN, NS_CLKRUN_PMESTS);
		FUNC1(sc, NS_CLKRUN, 0);
	} else {
		/* Disable WOL functions. */
		FUNC1(sc, SIS_PWRMAN_CTL, 0);
	}
}
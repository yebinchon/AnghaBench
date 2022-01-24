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
struct dc_softc {int /*<<< orphan*/  dc_dev; } ;

/* Variables and functions */
 int FUNC0 (struct dc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DC_10BTCTRL ; 
 int /*<<< orphan*/  DC_BUSCTL ; 
 int DC_BUSCTL_RESET ; 
 int /*<<< orphan*/  FUNC2 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DC_IMR ; 
 scalar_t__ FUNC3 (struct dc_softc*) ; 
 scalar_t__ FUNC4 (struct dc_softc*) ; 
 scalar_t__ FUNC5 (struct dc_softc*) ; 
 scalar_t__ FUNC6 (struct dc_softc*) ; 
 scalar_t__ FUNC7 (struct dc_softc*) ; 
 scalar_t__ FUNC8 (struct dc_softc*) ; 
 int /*<<< orphan*/  DC_NETCFG ; 
 int /*<<< orphan*/  FUNC9 (struct dc_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  DC_SIARESET ; 
 int DC_SIA_RESET ; 
 int DC_TIMEOUT ; 
 int /*<<< orphan*/  DC_WATCHDOG ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC12(struct dc_softc *sc)
{
	int i;

	FUNC9(sc, DC_BUSCTL, DC_BUSCTL_RESET);

	for (i = 0; i < DC_TIMEOUT; i++) {
		FUNC10(10);
		if (!(FUNC0(sc, DC_BUSCTL) & DC_BUSCTL_RESET))
			break;
	}

	if (FUNC4(sc) || FUNC3(sc) || FUNC5(sc) ||
	    FUNC8(sc) || FUNC6(sc) || FUNC7(sc)) {
		FUNC10(10000);
		FUNC2(sc, DC_BUSCTL, DC_BUSCTL_RESET);
		i = 0;
	}

	if (i == DC_TIMEOUT)
		FUNC11(sc->dc_dev, "reset never completed!\n");

	/* Wait a little while for the chip to get its brains in order. */
	FUNC10(1000);

	FUNC1(sc, DC_IMR, 0x00000000);
	FUNC1(sc, DC_BUSCTL, 0x00000000);
	FUNC1(sc, DC_NETCFG, 0x00000000);

	/*
	 * Bring the SIA out of reset. In some cases, it looks
	 * like failing to unreset the SIA soon enough gets it
	 * into a state where it will never come out of reset
	 * until we reset the whole chip again.
	 */
	if (FUNC6(sc)) {
		FUNC9(sc, DC_SIARESET, DC_SIA_RESET);
		FUNC1(sc, DC_10BTCTRL, 0xFFFFFFFF);
		FUNC1(sc, DC_WATCHDOG, 0);
	}
}
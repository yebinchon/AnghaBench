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
struct rum_softc {int /*<<< orphan*/ * sc_xfer; scalar_t__ sc_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  RT2573_DISABLE_RX ; 
 int /*<<< orphan*/  RT2573_MAC_CSR1 ; 
 int RT2573_RESET_ASIC ; 
 int RT2573_RESET_BBP ; 
 int /*<<< orphan*/  RT2573_TXRX_CSR0 ; 
 size_t RUM_BULK_RD ; 
 size_t RUM_BULK_WR ; 
 int /*<<< orphan*/  FUNC0 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rum_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rum_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct rum_softc *sc)
{

	FUNC0(sc);
	if (!sc->sc_running) {
		FUNC1(sc);
		return;
	}
	sc->sc_running = 0;
	FUNC1(sc);

	/*
	 * Drain the USB transfers, if not already drained:
	 */
	FUNC5(sc->sc_xfer[RUM_BULK_WR]);
	FUNC5(sc->sc_xfer[RUM_BULK_RD]);

	FUNC0(sc);
	FUNC3(sc);

	/* disable Rx */
	FUNC2(sc, RT2573_TXRX_CSR0, RT2573_DISABLE_RX);

	/* reset ASIC */
	FUNC4(sc, RT2573_MAC_CSR1, RT2573_RESET_ASIC | RT2573_RESET_BBP);
	FUNC4(sc, RT2573_MAC_CSR1, 0);
	FUNC1(sc);
}
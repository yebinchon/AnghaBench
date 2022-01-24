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
struct ural_softc {int /*<<< orphan*/ * sc_xfer; scalar_t__ sc_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int RAL_DISABLE_RX ; 
 int /*<<< orphan*/  FUNC0 (struct ural_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ural_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RAL_MAC_CSR1 ; 
 int RAL_RESET_ASIC ; 
 int RAL_RESET_BBP ; 
 int /*<<< orphan*/  RAL_TXRX_CSR2 ; 
 int /*<<< orphan*/  FUNC2 (struct ural_softc*) ; 
 size_t URAL_BULK_RD ; 
 size_t URAL_BULK_WR ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (struct ural_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ural_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ural_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct ural_softc *sc)
{

	FUNC1(sc, MA_OWNED);

	sc->sc_running = 0;

	/*
	 * Drain all the transfers, if not already drained:
	 */
	FUNC2(sc);
	FUNC6(sc->sc_xfer[URAL_BULK_WR]);
	FUNC6(sc->sc_xfer[URAL_BULK_RD]);
	FUNC0(sc);

	FUNC4(sc);

	/* disable Rx */
	FUNC5(sc, RAL_TXRX_CSR2, RAL_DISABLE_RX);
	/* reset ASIC and BBP (but won't reset MAC registers!) */
	FUNC5(sc, RAL_MAC_CSR1, RAL_RESET_ASIC | RAL_RESET_BBP);
	/* wait a little */
	FUNC3(sc, hz / 10);
	FUNC5(sc, RAL_MAC_CSR1, 0);
	/* wait a little */
	FUNC3(sc, hz / 10);
}
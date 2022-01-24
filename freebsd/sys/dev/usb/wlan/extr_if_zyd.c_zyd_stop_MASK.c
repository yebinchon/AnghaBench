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
struct zyd_softc {int sc_flags; int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 size_t ZYD_BULK_RD ; 
 size_t ZYD_BULK_WR ; 
 int /*<<< orphan*/  ZYD_CR_INTERRUPT ; 
 int ZYD_FLAG_INITONCE ; 
 int ZYD_FLAG_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct zyd_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct zyd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZYD_MAC_RXFILTER ; 
 int /*<<< orphan*/  FUNC2 (struct zyd_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zyd_softc*) ; 
 int FUNC5 (struct zyd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct zyd_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct zyd_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct zyd_softc *sc)
{
	int error;

	FUNC1(sc, MA_OWNED);

	sc->sc_flags &= ~ZYD_FLAG_RUNNING;
	FUNC4(sc);

	/*
	 * Drain all the transfers, if not already drained:
	 */
	FUNC2(sc);
	FUNC3(sc->sc_xfer[ZYD_BULK_WR]);
	FUNC3(sc->sc_xfer[ZYD_BULK_RD]);
	FUNC0(sc);

	FUNC6(sc);

	/* Stop now if the device was never set up */
	if (!(sc->sc_flags & ZYD_FLAG_INITONCE))
		return;

	/* switch radio transmitter OFF */
	error = FUNC5(sc, 0);
	if (error != 0)
		goto fail;
	/* disable Rx */
	FUNC7(sc, ZYD_MAC_RXFILTER, 0);
	/* disable interrupts */
	FUNC7(sc, ZYD_CR_INTERRUPT, 0);

fail:
	return;
}
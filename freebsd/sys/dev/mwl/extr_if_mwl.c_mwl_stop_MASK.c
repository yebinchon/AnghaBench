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
struct mwl_softc {scalar_t__ sc_tx_timer; int /*<<< orphan*/  sc_watchdog; scalar_t__ sc_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mwl_softc*) ; 

__attribute__((used)) static void
FUNC3(struct mwl_softc *sc)
{

	FUNC0(sc);
	if (sc->sc_running) {
		/*
		 * Shutdown the hardware and driver.
		 */
		sc->sc_running = 0;
		FUNC1(&sc->sc_watchdog);
		sc->sc_tx_timer = 0;
		FUNC2(sc);
	}
}
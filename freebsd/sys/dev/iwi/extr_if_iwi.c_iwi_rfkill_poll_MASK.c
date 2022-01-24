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
struct iwi_softc {int /*<<< orphan*/  sc_rftimer; int /*<<< orphan*/  sc_radiontask; int /*<<< orphan*/  sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,void (*) (void*),struct iwi_softc*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct iwi_softc*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct iwi_softc *sc = arg;

	FUNC0(sc);

	/*
	 * Check for a change in rfkill state.  We get an
	 * interrupt when a radio is disabled but not when
	 * it is enabled so we must poll for the latter.
	 */
	if (!FUNC3(sc)) {
		FUNC2(&sc->sc_ic, &sc->sc_radiontask);
		return;
	}
	FUNC1(&sc->sc_rftimer, 2*hz, iwi_rfkill_poll, sc);
}
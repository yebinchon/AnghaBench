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
struct rtwn_softc {int sc_flags; int /*<<< orphan*/  sc_ic; int /*<<< orphan*/  last_physt; int /*<<< orphan*/  cur_bcnq_id; scalar_t__ thcal_temp; scalar_t__ fwver; scalar_t__ sc_tx_timer; int /*<<< orphan*/  sc_watchdog_to; } ;

/* Variables and functions */
 int RTWN_FW_LOADED ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int RTWN_RUNNING ; 
 int RTWN_STARTED ; 
 int RTWN_TEMP_MEASURED ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  RTWN_VAP_ID_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct rtwn_softc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct rtwn_softc *sc)
{

	FUNC0(sc);
	if (!(sc->sc_flags & RTWN_STARTED)) {
		FUNC1(sc);
		return;
	}

#ifndef D4054
	FUNC3(&sc->sc_watchdog_to);
	sc->sc_tx_timer = 0;
#endif
	sc->sc_flags &= ~(RTWN_STARTED | RTWN_RUNNING | RTWN_FW_LOADED);
	sc->sc_flags &= ~RTWN_TEMP_MEASURED;
	sc->fwver = 0;
	sc->thcal_temp = 0;
	sc->cur_bcnq_id = RTWN_VAP_ID_INVALID;
	FUNC2(&sc->last_physt, sizeof(sc->last_physt));

#ifdef D4054
	ieee80211_tx_watchdog_stop(&sc->sc_ic);
#endif

	FUNC5(sc);
	FUNC6(sc);
	FUNC7(sc);
	FUNC8(sc, NULL);
	FUNC1(sc);
}
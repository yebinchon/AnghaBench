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
struct ieee80211com {int dummy; } ;
struct rtwn_softc {int sc_flags; scalar_t__ sc_tx_timer; int /*<<< orphan*/  sc_watchdog_to; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int RTWN_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct rtwn_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211com*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct rtwn_softc *sc = arg;
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC1(sc);

	FUNC0(sc->sc_flags & RTWN_RUNNING, ("not running"));

	if (sc->sc_tx_timer != 0 && --sc->sc_tx_timer == 0) {
		FUNC3(ic, "device timeout\n");
		FUNC4(ic);
		return;
	}
	FUNC2(&sc->sc_watchdog_to, hz, rtwn_watchdog, sc);
}
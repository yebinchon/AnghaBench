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
struct ieee80211com {int /*<<< orphan*/  ic_oerrors; } ;
struct uath_softc {scalar_t__ sc_tx_timer; int /*<<< orphan*/  watchdog_ch; int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct uath_softc *sc = arg;
	struct ieee80211com *ic = &sc->sc_ic;

	if (sc->sc_tx_timer > 0) {
		if (--sc->sc_tx_timer == 0) {
			FUNC2(sc->sc_dev, "device timeout\n");
			FUNC1(ic->ic_oerrors, 1);
			FUNC3(ic);
			return;
		}
		FUNC0(&sc->watchdog_ch, hz, uath_watchdog, sc);
	}
}
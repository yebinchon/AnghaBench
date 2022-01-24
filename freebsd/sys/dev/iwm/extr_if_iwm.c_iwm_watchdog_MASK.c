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
struct iwm_softc {scalar_t__ sc_attached; scalar_t__ sc_tx_timer; int /*<<< orphan*/  sc_watchdog_to; struct ieee80211com sc_ic; int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct iwm_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwm_softc*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct iwm_softc *sc = arg;
	struct ieee80211com *ic = &sc->sc_ic;

	if (sc->sc_attached == 0)
		return;

	if (sc->sc_tx_timer > 0) {
		if (--sc->sc_tx_timer == 0) {
			FUNC2(sc->sc_dev, "device timeout\n");
#ifdef IWM_DEBUG
			iwm_nic_error(sc);
#endif
			FUNC3(ic);
			FUNC1(sc->sc_ic.ic_oerrors, 1);
			return;
		}
		FUNC0(&sc->sc_watchdog_to, hz, iwm_watchdog, sc);
	}
}
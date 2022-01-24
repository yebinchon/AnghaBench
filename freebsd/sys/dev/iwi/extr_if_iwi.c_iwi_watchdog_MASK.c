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
struct ieee80211com {int /*<<< orphan*/  ic_vaps; int /*<<< orphan*/  ic_oerrors; } ;
struct iwi_softc {scalar_t__ sc_tx_timer; scalar_t__ sc_state_timer; scalar_t__ fw_state; scalar_t__ sc_busy_timer; int /*<<< orphan*/  sc_wdtimer; int /*<<< orphan*/  sc_restarttask; int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 scalar_t__ IWI_FW_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct iwi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211com*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct iwi_softc *sc = arg;
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC0(sc);

	if (sc->sc_tx_timer > 0) {
		if (--sc->sc_tx_timer == 0) {
			FUNC4(sc->sc_dev, "device timeout\n");
			FUNC3(ic->ic_oerrors, 1);
			FUNC6(ic, &sc->sc_restarttask);
		}
	}
	if (sc->sc_state_timer > 0) {
		if (--sc->sc_state_timer == 0) {
			FUNC4(sc->sc_dev,
			    "firmware stuck in state %d, resetting\n",
			    sc->fw_state);
			if (sc->fw_state == IWI_FW_SCANNING)
				FUNC5(FUNC1(&ic->ic_vaps));
			FUNC6(ic, &sc->sc_restarttask);
			sc->sc_state_timer = 3;
		}
	}
	if (sc->sc_busy_timer > 0) {
		if (--sc->sc_busy_timer == 0) {
			FUNC4(sc->sc_dev,
			    "firmware command timeout, resetting\n");
			FUNC6(ic, &sc->sc_restarttask);
		}
	}
	FUNC2(&sc->sc_wdtimer, hz, iwi_watchdog, sc);
}
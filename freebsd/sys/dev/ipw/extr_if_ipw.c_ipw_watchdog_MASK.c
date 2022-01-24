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
struct ipw_softc {scalar_t__ sc_tx_timer; scalar_t__ sc_scan_timer; int flags; int /*<<< orphan*/  sc_wdtimer; int /*<<< orphan*/  sc_init_task; int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int IPW_FLAG_RUNNING ; 
 int IPW_FLAG_SCANNING ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

__attribute__((used)) static void
FUNC10(void *arg)
{
	struct ipw_softc *sc = arg;
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC2(sc);

	if (sc->sc_tx_timer > 0) {
		if (--sc->sc_tx_timer == 0) {
			FUNC7(sc->sc_dev, "device timeout\n");
			FUNC6(ic->ic_oerrors, 1);
			FUNC9(taskqueue_swi, &sc->sc_init_task);
		}
	}
	if (sc->sc_scan_timer > 0) {
		if (--sc->sc_scan_timer == 0) {
			FUNC0(3, ("Scan timeout\n"));
			/* End the scan */
			if (sc->flags & IPW_FLAG_SCANNING) {
				FUNC3(sc);
				FUNC8(FUNC4(&ic->ic_vaps));
				FUNC1(sc);
				sc->flags &= ~IPW_FLAG_SCANNING;
			}
		}
	}
	if (sc->flags & IPW_FLAG_RUNNING)
		FUNC5(&sc->sc_wdtimer, hz, ipw_watchdog, sc);
}
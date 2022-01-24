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
struct wpi_softc {int /*<<< orphan*/  sc_radioon_task; int /*<<< orphan*/  watchdog_rfkill; struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpi_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WPI_APMG_RFKILL ; 
 int /*<<< orphan*/  WPI_DEBUG_WATCHDOG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct wpi_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct wpi_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct wpi_softc *sc = arg;
	struct ieee80211com *ic = &sc->sc_ic;

	FUNC0(sc, WPI_DEBUG_WATCHDOG, "RFkill Watchdog: tick\n");

	/* No need to lock firmware memory. */
	if ((FUNC3(sc, WPI_APMG_RFKILL) & 0x1) == 0) {
		/* Radio kill switch is still off. */
		FUNC1(&sc->watchdog_rfkill, hz, wpi_watchdog_rfkill,
		    sc);
	} else
		FUNC2(ic, &sc->sc_radioon_task);
}
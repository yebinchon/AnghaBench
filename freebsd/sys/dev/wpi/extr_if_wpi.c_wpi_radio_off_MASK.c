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
struct ieee80211com {int /*<<< orphan*/  ic_vaps; } ;
struct wpi_softc {int /*<<< orphan*/  watchdog_rfkill; int /*<<< orphan*/  sc_dev; struct ieee80211com sc_ic; } ;
struct ieee80211vap {int dummy; } ;

/* Variables and functions */
 struct ieee80211vap* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpi_softc*) ; 
 int /*<<< orphan*/  wpi_watchdog_rfkill ; 

__attribute__((used)) static void
FUNC8(void *arg0, int pending)
{
	struct wpi_softc *sc = arg0;
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC0(&ic->ic_vaps);

	FUNC4(sc->sc_dev, "RF switch: radio disabled\n");

	FUNC5(ic, 0);
	FUNC7(sc);
	if (vap != NULL)
		FUNC6(vap);

	FUNC1(sc);
	FUNC3(&sc->watchdog_rfkill, hz, wpi_watchdog_rfkill, sc);
	FUNC2(sc);
}
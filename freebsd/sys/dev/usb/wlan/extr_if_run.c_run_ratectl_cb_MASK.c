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
struct ieee80211com {int /*<<< orphan*/  ic_sta; int /*<<< orphan*/  ic_vaps; } ;
struct run_softc {int rvp_cnt; scalar_t__ ratectl_run; int /*<<< orphan*/  ratectl_ch; struct ieee80211com sc_ic; } ;
struct ieee80211vap {scalar_t__ iv_opmode; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_M_STA ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*) ; 
 scalar_t__ RUN_RATECTL_OFF ; 
 int /*<<< orphan*/  FUNC1 (struct run_softc*) ; 
 struct ieee80211vap* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct run_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*) ; 
 int /*<<< orphan*/  run_iter_func ; 
 int /*<<< orphan*/  run_ratectl_to ; 
 int /*<<< orphan*/  FUNC5 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct run_softc*) ; 

__attribute__((used)) static void
FUNC7(void *arg, int pending)
{
	struct run_softc *sc = arg;
	struct ieee80211com *ic = &sc->sc_ic;
	struct ieee80211vap *vap = FUNC2(&ic->ic_vaps);

	if (vap == NULL)
		return;

	if (sc->rvp_cnt > 1 || vap->iv_opmode != IEEE80211_M_STA) {
		/*
		 * run_reset_livelock() doesn't do anything with AMRR,
		 * but Ralink wants us to call it every 1 sec. So, we
		 * piggyback here rather than creating another callout.
		 * Livelock may occur only in HOSTAP or IBSS mode
		 * (when h/w is sending beacons).
		 */
		FUNC0(sc);
		FUNC5(sc);
		/* just in case, there are some stats to drain */
		FUNC4(sc);
		FUNC1(sc);
	}

	FUNC3(&ic->ic_sta, run_iter_func, sc);

	FUNC0(sc);
	if(sc->ratectl_run != RUN_RATECTL_OFF)
		FUNC6(&sc->ratectl_ch, hz, run_ratectl_to, sc);
	FUNC1(sc);
}
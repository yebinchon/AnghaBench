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
struct rtwn_softc {scalar_t__ ap_vaps; scalar_t__ bcn_vaps; scalar_t__ nvaps; scalar_t__ mon_vaps; scalar_t__ vaps_running; scalar_t__ monvaps_running; int /*<<< orphan*/ ** vaps; } ;
typedef  enum ieee80211_opmode { ____Placeholder_ieee80211_opmode } ieee80211_opmode ;

/* Variables and functions */
#define  IEEE80211_M_HOSTAP 131 
#define  IEEE80211_M_IBSS 130 
#define  IEEE80211_M_MONITOR 129 
#define  IEEE80211_M_STA 128 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 scalar_t__ FUNC2 (struct rtwn_softc*) ; 
 scalar_t__ RTWN_PORT_COUNT ; 
 int RTWN_VAP_ID_INVALID ; 

__attribute__((used)) static void
FUNC3(struct rtwn_softc *sc,
    enum ieee80211_opmode opmode, int id)
{

	FUNC1(sc);

	if (id != RTWN_VAP_ID_INVALID) {
		FUNC0(id == 0 || id == 1, ("wrong vap id %d!\n", id));
		FUNC0(sc->vaps[id] != NULL, ("vap pointer is NULL\n"));
		sc->vaps[id] = NULL;
	}

	switch (opmode) {
	case IEEE80211_M_HOSTAP:
		sc->ap_vaps--;
		/* FALLTHROUGH */
	case IEEE80211_M_IBSS:
		sc->bcn_vaps--;
		/* FALLTHROUGH */
	case IEEE80211_M_STA:
		sc->nvaps--;
		break;
	case IEEE80211_M_MONITOR:
		sc->mon_vaps--;
		break;
	default:
		FUNC0(0, ("wrong opmode %d\n", opmode));
		break;
	}

	FUNC0(sc->vaps_running >= 0 && sc->monvaps_running >= 0,
	    ("number of running vaps is negative (vaps %d, monvaps %d)\n",
	    sc->vaps_running, sc->monvaps_running));
	FUNC0(sc->vaps_running - sc->monvaps_running <= RTWN_PORT_COUNT,
	    ("number of running vaps is too big (vaps %d, monvaps %d)\n",
	    sc->vaps_running, sc->monvaps_running));

	FUNC0(sc->nvaps >= 0 && sc->nvaps <= RTWN_PORT_COUNT,
	    ("wrong value %d for nvaps\n", sc->nvaps));
	FUNC0(sc->mon_vaps >= 0, ("mon_vaps is negative (%d)\n",
	    sc->mon_vaps));
	FUNC0(sc->bcn_vaps >= 0 && ((FUNC2(sc) &&
	    sc->bcn_vaps <= RTWN_PORT_COUNT) || sc->bcn_vaps <= 1),
	    ("bcn_vaps value %d is wrong\n", sc->bcn_vaps));
	FUNC0(sc->ap_vaps >= 0 && ((FUNC2(sc) &&
	    sc->ap_vaps <= RTWN_PORT_COUNT) || sc->ap_vaps <= 1),
	    ("ap_vaps value %d is wrong\n", sc->ap_vaps));
}
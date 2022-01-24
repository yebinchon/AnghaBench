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
struct rum_vap {int /*<<< orphan*/  (* bmiss ) (struct ieee80211vap*) ;} ;
struct rum_softc {int sc_sleeping; scalar_t__ sc_sleep_end; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct rum_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rum_softc*) ; 
 struct rum_vap* FUNC3 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211vap*) ; 
 scalar_t__ ticks ; 

__attribute__((used)) static void
FUNC5(struct ieee80211vap *vap)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct rum_softc *sc = ic->ic_softc;
	struct rum_vap *rvp = FUNC3(vap);
	int sleep;

	FUNC1(sc);
	if (sc->sc_sleeping && sc->sc_sleep_end < ticks) {
		FUNC0(12, "dropping 'sleeping' bit, "
		    "device must be awake now\n");

		sc->sc_sleeping = 0;
	}

	sleep = sc->sc_sleeping;
	FUNC2(sc);

	if (!sleep)
		rvp->bmiss(vap);
#ifdef USB_DEBUG
	else
		DPRINTFN(13, "bmiss event is ignored whilst sleeping\n");
#endif
}
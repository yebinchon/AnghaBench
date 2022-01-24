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
struct wi_softc {int sc_flags; scalar_t__ wi_gone; } ;
struct ieee80211com {scalar_t__ ic_nrunning; scalar_t__ ic_opmode; scalar_t__ ic_promisc; struct wi_softc* ic_softc; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_M_HOSTAP ; 
 int WI_FLAGS_PROMISC ; 
 int WI_FLAGS_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct wi_softc*) ; 
 int /*<<< orphan*/  WI_RID_PROMISC ; 
 int /*<<< orphan*/  FUNC1 (struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct wi_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct wi_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211com *ic)
{
	struct wi_softc *sc = ic->ic_softc;
	int startall = 0;

	FUNC0(sc);
	/*
	 * Can't do promisc and hostap at the same time.  If all that's
	 * changing is the promisc flag, try to short-circuit a call to
	 * wi_init() by just setting PROMISC in the hardware.
	 */
	if (ic->ic_nrunning > 0) {
		if (ic->ic_opmode != IEEE80211_M_HOSTAP &&
		    sc->sc_flags & WI_FLAGS_RUNNING) {
			if (ic->ic_promisc > 0 &&
			    (sc->sc_flags & WI_FLAGS_PROMISC) == 0) {
				FUNC5(sc, WI_RID_PROMISC, 1);
				sc->sc_flags |= WI_FLAGS_PROMISC;
			} else if (ic->ic_promisc == 0 &&
			    (sc->sc_flags & WI_FLAGS_PROMISC) != 0) {
				FUNC5(sc, WI_RID_PROMISC, 0);
				sc->sc_flags &= ~WI_FLAGS_PROMISC;
			} else {
				FUNC3(sc);
				startall = 1;
			}
		} else {
			FUNC3(sc);
			startall = 1;
		}
	} else if (sc->sc_flags & WI_FLAGS_RUNNING) {
		FUNC4(sc, 1);
		sc->wi_gone = 0;
	}
	FUNC1(sc);
	if (startall)
		FUNC2(ic);
}
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
struct rtwn_vap {int (* newstate ) (struct ieee80211vap*,int,int) ;} ;
struct rtwn_softc {int vaps_running; int /*<<< orphan*/  monvaps_running; } ;
struct ieee80211vap {size_t iv_state; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct rtwn_softc* ic_softc; } ;
typedef  enum ieee80211_state { ____Placeholder_ieee80211_state } ieee80211_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
#define  IEEE80211_S_INIT 129 
#define  IEEE80211_S_RUN 128 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  RTWN_DEBUG_STATE ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTWN_LED_LINK ; 
 int /*<<< orphan*/  FUNC3 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_softc*) ; 
 struct rtwn_vap* FUNC5 (struct ieee80211vap*) ; 
 int /*<<< orphan*/ * ieee80211_state_name ; 
 int /*<<< orphan*/  FUNC6 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct ieee80211vap*,int,int) ; 

__attribute__((used)) static int
FUNC8(struct ieee80211vap *vap, enum ieee80211_state nstate,
    int arg)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct rtwn_softc *sc = ic->ic_softc;
	struct rtwn_vap *uvp = FUNC5(vap);

	FUNC2(sc, RTWN_DEBUG_STATE, "%s -> %s\n",
	    ieee80211_state_name[vap->iv_state],
	    ieee80211_state_name[nstate]);

	if (vap->iv_state != nstate) {
		FUNC1(ic);
		FUNC3(sc);

		switch (nstate) {
		case IEEE80211_S_INIT:
			sc->vaps_running--;
			sc->monvaps_running--;

			if (sc->vaps_running == 0) {
				/* Turn link LED off. */
				FUNC6(sc, RTWN_LED_LINK, 0);
			}
			break;
		case IEEE80211_S_RUN:
			sc->vaps_running++;
			sc->monvaps_running++;

			if (sc->vaps_running == 1) {
				/* Turn link LED on. */
				FUNC6(sc, RTWN_LED_LINK, 1);
			}
			break;
		default:
			/* NOTREACHED */
			break;
		}

		FUNC4(sc);
		FUNC0(ic);
	}

	return (uvp->newstate(vap, nstate, arg));
}
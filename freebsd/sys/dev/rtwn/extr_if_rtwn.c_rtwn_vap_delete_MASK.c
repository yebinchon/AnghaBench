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
struct rtwn_vap {int /*<<< orphan*/  tsf_sync_adhoc; int /*<<< orphan*/  tsf_sync_adhoc_task; int /*<<< orphan*/  id; int /*<<< orphan*/ * bcn_mbuf; } ;
struct rtwn_softc {int sc_flags; } ;
struct ieee80211vap {scalar_t__ iv_opmode; int /*<<< orphan*/  iv_nstate_task; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int /*<<< orphan*/  ic_parent_task; struct rtwn_softc* ic_softc; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_M_IBSS ; 
 int /*<<< orphan*/  M_80211_VAP ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*) ; 
 int RTWN_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 struct rtwn_vap* FUNC2 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rtwn_vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct rtwn_softc*,struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC11 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC12 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC13 (struct rtwn_softc*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct ieee80211vap *vap)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct rtwn_softc *sc = ic->ic_softc;
	struct rtwn_vap *uvp = FUNC2(vap);

	/* Put vap into INIT state + stop device if needed. */
	FUNC7(vap);
	FUNC5(ic, &vap->iv_nstate_task);
	FUNC5(ic, &ic->ic_parent_task);

	FUNC0(sc);
	/* Cancel any unfinished Tx. */
	FUNC10(sc, vap);
	if (uvp->bcn_mbuf != NULL)
		FUNC9(uvp->bcn_mbuf);
	FUNC13(sc, vap->iv_opmode, uvp->id);
	FUNC12(sc);
	if (sc->sc_flags & RTWN_RUNNING)
		FUNC11(sc);
	FUNC1(sc);

	if (vap->iv_opmode == IEEE80211_M_IBSS) {
		FUNC5(ic, &uvp->tsf_sync_adhoc_task);
		FUNC3(&uvp->tsf_sync_adhoc);
	}

	FUNC6(vap);
	FUNC8(vap);
	FUNC4(uvp, M_80211_VAP);
}
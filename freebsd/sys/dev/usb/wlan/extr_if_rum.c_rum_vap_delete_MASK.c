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
struct rum_vap {int /*<<< orphan*/  bcn_mbuf; int /*<<< orphan*/  ratectl_task; int /*<<< orphan*/  ratectl_ch; } ;
struct rum_softc {int dummy; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_nstate_task; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct rum_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_S_INIT ; 
 int /*<<< orphan*/  M_80211_VAP ; 
 int /*<<< orphan*/  FUNC0 (struct rum_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*) ; 
 struct rum_vap* FUNC2 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC3 (struct rum_vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211vap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rum_softc*,struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct ieee80211vap *vap)
{
	struct rum_vap *rvp = FUNC2(vap);
	struct ieee80211com *ic = vap->iv_ic;
	struct rum_softc *sc = ic->ic_softc;

	/* Put vap into INIT state. */
	FUNC5(vap, IEEE80211_S_INIT, -1);
	FUNC4(ic, &vap->iv_nstate_task);

	FUNC0(sc);
	/* Cancel any unfinished Tx. */
	FUNC9(sc, vap);
	FUNC1(sc);

	FUNC10(&rvp->ratectl_ch);
	FUNC4(ic, &rvp->ratectl_task);
	FUNC6(vap);
	FUNC7(vap);
	FUNC8(rvp->bcn_mbuf);
	FUNC3(rvp, M_80211_VAP);
}
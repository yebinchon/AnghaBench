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
typedef  int uint8_t ;
struct run_vap {int rvp_id; int /*<<< orphan*/ * beacon_mbuf; } ;
struct run_softc {int ratectl_run; int rvp_bmap; int /*<<< orphan*/  rvp_cnt; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_80211_VAP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RUN_DEBUG_STATE ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int /*<<< orphan*/ ,char*,struct ieee80211vap*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*) ; 
 struct run_vap* FUNC5 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC6 (struct run_vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct run_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC11(struct ieee80211vap *vap)
{
	struct run_vap *rvp = FUNC5(vap);
	struct ieee80211com *ic;
	struct run_softc *sc;
	uint8_t rvp_id;

	if (vap == NULL)
		return;

	ic = vap->iv_ic;
	sc = ic->ic_softc;

	FUNC3(sc);

	FUNC9(rvp->beacon_mbuf);
	rvp->beacon_mbuf = NULL;

	rvp_id = rvp->rvp_id;
	sc->ratectl_run &= ~(1 << rvp_id);
	sc->rvp_bmap &= ~(1 << rvp_id);
	FUNC10(sc, FUNC1(rvp_id, 0), 0, 128);
	FUNC10(sc, FUNC0(rvp_id), 0, 512);
	--sc->rvp_cnt;

	FUNC2(sc, RUN_DEBUG_STATE,
	    "vap=%p rvp_id=%d bmap=%x rvp_cnt=%d\n",
	    vap, rvp_id, sc->rvp_bmap, sc->rvp_cnt);

	FUNC4(sc);

	FUNC7(vap);
	FUNC8(vap);
	FUNC6(rvp, M_80211_VAP);
}
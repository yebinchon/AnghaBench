#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct run_softc {int /*<<< orphan*/  cmdq_key_set; int /*<<< orphan*/  cmdq_task; TYPE_1__* cmdq; int /*<<< orphan*/  cmdq_store; } ;
struct ieee80211vap {scalar_t__ iv_opmode; struct ieee80211com* iv_ic; } ;
struct ieee80211com {struct run_softc* ic_softc; } ;
struct ieee80211_key {int /*<<< orphan*/  wk_macaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  mac; struct ieee80211_key* k; struct ieee80211vap* arg1; int /*<<< orphan*/ * arg0; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ IEEE80211_M_HOSTAP ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RUN_CMDQ_GO ; 
 int /*<<< orphan*/  RUN_DEBUG_KEY ; 
 int /*<<< orphan*/  FUNC2 (struct run_softc*,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct run_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  run_key_set_cb ; 

__attribute__((used)) static int
FUNC6(struct ieee80211vap *vap, struct ieee80211_key *k)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct run_softc *sc = ic->ic_softc;
	uint32_t i;

	i = FUNC1(&sc->cmdq_store);
	FUNC2(sc, RUN_DEBUG_KEY, "cmdq_store=%d\n", i);
	sc->cmdq[i].func = run_key_set_cb;
	sc->cmdq[i].arg0 = NULL;
	sc->cmdq[i].arg1 = vap;
	sc->cmdq[i].k = k;
	FUNC0(sc->cmdq[i].mac, k->wk_macaddr);
	FUNC5(ic, &sc->cmdq_task);

	/*
	 * To make sure key will be set when hostapd
	 * calls iv_key_set() before if_init().
	 */
	if (vap->iv_opmode == IEEE80211_M_HOSTAP) {
		FUNC3(sc);
		sc->cmdq_key_set = RUN_CMDQ_GO;
		FUNC4(sc);
	}

	return (1);
}
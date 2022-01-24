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
struct ieee80211com {int /*<<< orphan*/  ic_txpowlimit; int /*<<< orphan*/  ic_bintval; int /*<<< orphan*/  ic_lintval; int /*<<< orphan*/  ic_hash_key; int /*<<< orphan*/  ic_update_chw; int /*<<< orphan*/  ic_update_promisc; int /*<<< orphan*/  ic_update_mcast; void* ic_oerrors; void* ic_ierrors; int /*<<< orphan*/  ic_name; int /*<<< orphan*/  ic_tq; int /*<<< orphan*/  ic_vaps; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_BINTVAL_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_TXPOWER_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ieee80211com*,int /*<<< orphan*/ ) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  ic_head ; 
 int /*<<< orphan*/  ic_list_mtx ; 
 int /*<<< orphan*/  ic_next ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  null_update_chw ; 
 int /*<<< orphan*/  null_update_mcast ; 
 int /*<<< orphan*/  null_update_promisc ; 
 int /*<<< orphan*/  FUNC20 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

void
FUNC22(struct ieee80211com *ic)
{

	FUNC0(ic, ic->ic_name);
	FUNC1(ic, ic->ic_name);
	FUNC3(&ic->ic_vaps);

	/* Create a taskqueue for all state changes */
	ic->ic_tq = FUNC20("ic_taskq", M_WAITOK | M_ZERO,
	    taskqueue_thread_enqueue, &ic->ic_tq);
	FUNC21(&ic->ic_tq, 1, PI_NET, "%s net80211 taskq",
	    ic->ic_name);
	ic->ic_ierrors = FUNC5(M_WAITOK);
	ic->ic_oerrors = FUNC5(M_WAITOK);
	/*
	 * Fill in 802.11 available channel set, mark all
	 * available channels as active, and pick a default
	 * channel if not already specified.
	 */
	FUNC6(ic);

	ic->ic_update_mcast = null_update_mcast;
	ic->ic_update_promisc = null_update_promisc;
	ic->ic_update_chw = null_update_chw;

	ic->ic_hash_key = FUNC4();
	ic->ic_bintval = IEEE80211_BINTVAL_DEFAULT;
	ic->ic_lintval = ic->ic_bintval;
	ic->ic_txpowlimit = IEEE80211_TXPOWER_MAX;

	FUNC7(ic);
	FUNC10(ic);
	FUNC11(ic);
	FUNC12(ic);
#ifdef IEEE80211_SUPPORT_SUPERG
	ieee80211_superg_attach(ic);
#endif
	FUNC9(ic);
	FUNC17(ic);
	FUNC14(ic);
	FUNC13(ic);
	FUNC8(ic);

	FUNC16(ic);

	FUNC18(&ic_list_mtx);
	FUNC2(&ic_head, ic, ic_next);
	FUNC19(&ic_list_mtx);
}
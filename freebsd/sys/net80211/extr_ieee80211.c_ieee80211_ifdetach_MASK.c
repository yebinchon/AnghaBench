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
struct ieee80211vap {int dummy; } ;
struct ieee80211com {int /*<<< orphan*/ * ic_tq; int /*<<< orphan*/  ic_oerrors; int /*<<< orphan*/  ic_ierrors; int /*<<< orphan*/  ic_vaps; int /*<<< orphan*/  ic_restart_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*,int /*<<< orphan*/ ) ; 
 struct ieee80211vap* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ic_list_mtx ; 
 int /*<<< orphan*/  ic_next ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211vap*) ; 
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
 int /*<<< orphan*/  FUNC16 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

void
FUNC23(struct ieee80211com *ic)
{
	struct ieee80211vap *vap;

	/*
	 * We use this as an indicator that ifattach never had a chance to be
	 * called, e.g. early driver attach failed and ifdetach was called
	 * during subsequent detach.  Never fear, for we have nothing to do
	 * here.
	 */
	if (ic->ic_tq == NULL)
		return;

	FUNC19(&ic_list_mtx);
	FUNC2(ic, ic_next);
	FUNC20(&ic_list_mtx);

	FUNC21(taskqueue_thread, &ic->ic_restart_task);

	/*
	 * The VAP is responsible for setting and clearing
	 * the VIMAGE context.
	 */
	while ((vap = FUNC3(&ic->ic_vaps)) != NULL) {
		FUNC5(vap);
		FUNC16(vap);
	}
	FUNC18(ic);

	FUNC15(ic);
	FUNC7(ic);
	FUNC12(ic);
	FUNC13(ic);
#ifdef IEEE80211_SUPPORT_SUPERG
	ieee80211_superg_detach(ic);
#endif
	FUNC17(ic);
	FUNC8(ic);
	/* NB: must be called before ieee80211_node_detach */
	FUNC11(ic);
	FUNC6(ic);
	FUNC10(ic);
	FUNC9(ic);

	FUNC4(ic->ic_ierrors);
	FUNC4(ic->ic_oerrors);

	FUNC22(ic->ic_tq);
	FUNC1(ic);
	FUNC0(ic);
}
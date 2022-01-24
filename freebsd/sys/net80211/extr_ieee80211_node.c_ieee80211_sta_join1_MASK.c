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
struct ieee80211vap {scalar_t__ iv_state; scalar_t__ iv_opmode; struct ieee80211_node* iv_bss; } ;
struct ieee80211com {int dummy; } ;
struct ieee80211_node_table {int dummy; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_chan; int /*<<< orphan*/  ni_rates; struct ieee80211_node_table* ni_table; int /*<<< orphan*/  ni_macaddr; struct ieee80211com* ni_ic; struct ieee80211vap* ni_vap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IEEE80211_FC0_SUBTYPE_DEAUTH ; 
 int IEEE80211_F_DODEL ; 
 int IEEE80211_F_JOIN ; 
 scalar_t__ IEEE80211_M_STA ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node_table*) ; 
 scalar_t__ IEEE80211_S_ASSOC ; 
 scalar_t__ IEEE80211_S_AUTH ; 
 scalar_t__ IEEE80211_S_RUN ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*,struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_node*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211vap*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211com*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_node_table*,struct ieee80211_node*) ; 

__attribute__((used)) static int
FUNC11(struct ieee80211_node *selbs)
{
	struct ieee80211vap *vap = selbs->ni_vap;
	struct ieee80211com *ic = selbs->ni_ic;
	struct ieee80211_node *obss;
	int canreassoc;

	/*
	 * Committed to selbs, setup state.
	 */
	obss = vap->iv_bss;
	/*
	 * Check if old+new node have the same address in which
	 * case we can reassociate when operating in sta mode.
	 */
	canreassoc = (obss != NULL &&
		vap->iv_state == IEEE80211_S_RUN &&
		FUNC0(obss->ni_macaddr, selbs->ni_macaddr));
	vap->iv_bss = selbs;		/* NB: caller assumed to bump refcnt */
	if (obss != NULL) {
		struct ieee80211_node_table *nt = obss->ni_table;

		FUNC3(selbs, obss);
		FUNC6(obss);	/* iv_bss reference */

		FUNC1(nt);
		FUNC10(nt, obss);		/* station table reference */
		FUNC2(nt);

		obss = NULL;		/* NB: guard against later use */
	}

	/*
	 * Delete unusable rates; we've already checked
	 * that the negotiated rate set is acceptable.
	 */
	FUNC4(vap->iv_bss, &vap->iv_bss->ni_rates,
		IEEE80211_F_DODEL | IEEE80211_F_JOIN);

	FUNC8(ic, selbs->ni_chan);
	/*
	 * Set the erp state (mostly the slot time) to deal with
	 * the auto-select case; this should be redundant if the
	 * mode is locked.
	 */
	FUNC7(ic);
	FUNC9(vap);

	if (vap->iv_opmode == IEEE80211_M_STA) {
		if (canreassoc) {
			/* Reassociate */
			FUNC5(vap, IEEE80211_S_ASSOC, 1);
		} else {
			/*
			 * Act as if we received a DEAUTH frame in case we
			 * are invoked from the RUN state.  This will cause
			 * us to try to re-authenticate if we are operating
			 * as a station.
			 */
			FUNC5(vap, IEEE80211_S_AUTH,
				IEEE80211_FC0_SUBTYPE_DEAUTH);
		}
	} else
		FUNC5(vap, IEEE80211_S_RUN, -1);
	return 1;
}
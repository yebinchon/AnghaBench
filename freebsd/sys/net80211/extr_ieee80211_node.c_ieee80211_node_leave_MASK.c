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
struct ieee80211vap {scalar_t__ iv_opmode; int /*<<< orphan*/  iv_sta_assoc; TYPE_1__* iv_auth; } ;
struct ieee80211com {int /*<<< orphan*/  ic_bsschan; int /*<<< orphan*/  ic_sta_assoc; } ;
struct ieee80211_node_table {int dummy; } ;
struct ieee80211_node {scalar_t__ ni_associd; struct ieee80211_node_table* ni_table; struct ieee80211vap* ni_vap; struct ieee80211com* ni_ic; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* ia_node_leave ) (struct ieee80211_node*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211vap*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*) ; 
 int IEEE80211_MSG_ASSOC ; 
 int IEEE80211_MSG_DEBUG ; 
 scalar_t__ IEEE80211_M_STA ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_node_table*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_node_table*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211vap*,int,struct ieee80211_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC16 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_node_table*,struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC18 (struct ieee80211_node*) ; 

void
FUNC19(struct ieee80211_node *ni)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct ieee80211vap *vap = ni->ni_vap;
	struct ieee80211_node_table *nt = ni->ni_table;

	FUNC9(vap, IEEE80211_MSG_ASSOC | IEEE80211_MSG_DEBUG, ni,
	    "station with aid %d leaves", FUNC6(ni));

	FUNC11(vap->iv_opmode != IEEE80211_M_STA,
		("unexpected operating mode %u", vap->iv_opmode));
	/*
	 * If node wasn't previously associated all
	 * we need to do is reclaim the reference.
	 */
	/* XXX ibss mode bypasses 11g and notification */
	if (ni->ni_associd == 0)
		goto done;
	/*
	 * Tell the authenticator the station is leaving.
	 * Note that we must do this before yanking the
	 * association id as the authenticator uses the
	 * associd to locate it's state block.
	 */
	if (vap->iv_auth->ia_node_leave != NULL)
		vap->iv_auth->ia_node_leave(ni);

	FUNC5(ic);
	FUNC0(vap, ni->ni_associd);
	vap->iv_sta_assoc--;
	ic->ic_sta_assoc--;

	if (FUNC4(ic->ic_bsschan))
		FUNC16(ni);
	if (FUNC3(ic->ic_bsschan))
		FUNC13(ni);
	if (FUNC1(ic->ic_bsschan) &&
	    FUNC2(ic->ic_bsschan))
		FUNC14(ni);
	FUNC10(ic);
	/*
	 * Cleanup station state.  In particular clear various
	 * state that might otherwise be reused if the node
	 * is reused before the reference count goes to zero
	 * (and memory is reclaimed).
	 */
	FUNC15(ni);
done:
	/*
	 * Remove the node from any table it's recorded in and
	 * drop the caller's reference.  Removal from the table
	 * is important to insure the node is not reprocessed
	 * for inactivity.
	 */
	if (nt != NULL) {
		FUNC7(nt);
		FUNC17(nt, ni);
		FUNC8(nt);
	} else
		FUNC12(ni);
}
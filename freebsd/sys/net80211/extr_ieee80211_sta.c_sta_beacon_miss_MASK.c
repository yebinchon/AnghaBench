#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  is_beacon_miss; } ;
struct ieee80211vap {size_t iv_state; size_t iv_opmode; scalar_t__ iv_bmiss_count; scalar_t__ iv_bmiss_max; scalar_t__ iv_roaming; TYPE_3__* iv_bss; TYPE_1__ iv_stats; int /*<<< orphan*/  iv_swbmiss; int /*<<< orphan*/  iv_myaddr; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags; TYPE_2__* ic_bsschan; } ;
struct TYPE_7__ {int /*<<< orphan*/  ni_esslen; int /*<<< orphan*/  ni_essid; int /*<<< orphan*/  ni_bssid; } ;
struct TYPE_6__ {int ic_flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211vap*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int IEEE80211_CHAN_TURBO ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211vap*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IEEE80211_F_SCAN ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int IEEE80211_MSG_DEBUG ; 
 int IEEE80211_MSG_STATE ; 
 int /*<<< orphan*/  IEEE80211_NODE_TURBOP ; 
 scalar_t__ IEEE80211_ROAMING_AUTO ; 
 int /*<<< orphan*/  IEEE80211_S_ASSOC ; 
 size_t IEEE80211_S_CSA ; 
 size_t IEEE80211_S_RUN ; 
 int /*<<< orphan*/  IEEE80211_S_SCAN ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211vap*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211vap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * ieee80211_opmode_name ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ieee80211_state_name ; 

__attribute__((used)) static void
FUNC9(struct ieee80211vap *vap)
{
	struct ieee80211com *ic = vap->iv_ic;

	FUNC2(ic);

	FUNC3((ic->ic_flags & IEEE80211_F_SCAN) == 0, ("scanning"));
	FUNC3(vap->iv_state >= IEEE80211_S_RUN,
	    ("wrong state %s", ieee80211_state_name[vap->iv_state]));

	FUNC1(vap, IEEE80211_MSG_STATE | IEEE80211_MSG_DEBUG,
	    "beacon miss, mode %s state %s\n",
	    ieee80211_opmode_name[vap->iv_opmode],
	    ieee80211_state_name[vap->iv_state]);

	if (vap->iv_state == IEEE80211_S_CSA) {
		/*
		 * A Channel Switch is pending; assume we missed the
		 * beacon that would've completed the process and just
		 * force the switch.  If we made a mistake we'll not
		 * find the AP on the new channel and fall back to a
		 * normal scan.
		 */
		FUNC5(ic);
		return;
	}
	if (++vap->iv_bmiss_count < vap->iv_bmiss_max) {
		/*
		 * Send a directed probe req before falling back to a
		 * scan; if we receive a response ic_bmiss_count will
		 * be reset.  Some cards mistakenly report beacon miss
		 * so this avoids the expensive scan if the ap is
		 * still there.
		 */
		FUNC8(vap->iv_bss, vap->iv_myaddr,
			vap->iv_bss->ni_bssid, vap->iv_bss->ni_bssid,
			vap->iv_bss->ni_essid, vap->iv_bss->ni_esslen);
		return;
	}

	FUNC4(&vap->iv_swbmiss);
	vap->iv_bmiss_count = 0;
	vap->iv_stats.is_beacon_miss++;
	if (vap->iv_roaming == IEEE80211_ROAMING_AUTO) {
#ifdef IEEE80211_SUPPORT_SUPERG

		/*
		 * If we receive a beacon miss interrupt when using
		 * dynamic turbo, attempt to switch modes before
		 * reassociating.
		 */
		if (IEEE80211_ATH_CAP(vap, vap->iv_bss, IEEE80211_NODE_TURBOP))
			ieee80211_dturbo_switch(vap,
			    ic->ic_bsschan->ic_flags ^ IEEE80211_CHAN_TURBO);
#endif
		/*
		 * Try to reassociate before scanning for a new ap.
		 */
		FUNC7(vap, IEEE80211_S_ASSOC, 1);
	} else {
		/*
		 * Somebody else is controlling state changes (e.g.
		 * a user-mode app) don't do anything that would
		 * confuse them; just drop into scan mode so they'll
		 * notified of the state change and given control.
		 */
		FUNC7(vap, IEEE80211_S_SCAN, 0);
	}
}
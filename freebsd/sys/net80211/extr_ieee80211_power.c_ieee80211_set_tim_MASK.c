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
typedef  scalar_t__ uint16_t ;
struct ieee80211vap {scalar_t__ iv_opmode; scalar_t__ iv_max_aid; int /*<<< orphan*/  (* iv_update_beacon ) (struct ieee80211vap*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  iv_ps_pending; int /*<<< orphan*/  iv_tim_bitmap; } ;
struct ieee80211com {int dummy; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_associd; struct ieee80211com* ni_ic; struct ieee80211vap* ni_vap; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IEEE80211_BEACON_TIM ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 scalar_t__ IEEE80211_M_HOSTAP ; 
 scalar_t__ IEEE80211_M_IBSS ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211vap*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct ieee80211_node *ni, int set)
{
	struct ieee80211vap *vap = ni->ni_vap;
	struct ieee80211com *ic = ni->ni_ic;
	uint16_t aid;
	int changed;

	FUNC3(vap->iv_opmode == IEEE80211_M_HOSTAP ||
		vap->iv_opmode == IEEE80211_M_IBSS,
		("operating mode %u", vap->iv_opmode));

	aid = FUNC0(ni->ni_associd);
	FUNC3(aid < vap->iv_max_aid,
		("bogus aid %u, max %u", aid, vap->iv_max_aid));

	FUNC1(ic);
	changed = (set != (FUNC5(vap->iv_tim_bitmap, aid) != 0));
	if (changed) {
		if (set) {
			FUNC6(vap->iv_tim_bitmap, aid);
			vap->iv_ps_pending++;
		} else {
			FUNC4(vap->iv_tim_bitmap, aid);
			vap->iv_ps_pending--;
		}
		/* NB: we know vap is in RUN state so no need to check */
		vap->iv_update_beacon(vap, IEEE80211_BEACON_TIM);
	}
	FUNC2(ic);

	return changed;
}
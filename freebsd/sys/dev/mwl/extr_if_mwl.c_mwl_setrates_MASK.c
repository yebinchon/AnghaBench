#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mwl_vap {int /*<<< orphan*/  mv_hvap; int /*<<< orphan*/  mv_eapolformat; } ;
struct ieee80211vap {scalar_t__ iv_state; struct ieee80211_node* iv_bss; } ;
struct ieee80211_txparam {scalar_t__ ucastrate; int /*<<< orphan*/  mcastrate; int /*<<< orphan*/  mgmtrate; } ;
struct ieee80211_node {struct ieee80211_txparam* ni_txparms; } ;
typedef  int /*<<< orphan*/  rates ;
struct TYPE_4__ {int /*<<< orphan*/  MgtRate; int /*<<< orphan*/  McastRate; } ;
typedef  TYPE_1__ MWL_HAL_TXRATE ;

/* Variables and functions */
 scalar_t__ IEEE80211_FIXED_RATE_NONE ; 
 scalar_t__ IEEE80211_S_RUN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct mwl_vap* FUNC1 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  RATE_AUTO ; 
 int /*<<< orphan*/  RATE_FIXED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ieee80211_node*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC6(struct ieee80211vap *vap)
{
	struct mwl_vap *mvp = FUNC1(vap);
	struct ieee80211_node *ni = vap->iv_bss;
	const struct ieee80211_txparam *tp = ni->ni_txparms;
	MWL_HAL_TXRATE rates;

	FUNC0(vap->iv_state == IEEE80211_S_RUN, ("state %d", vap->iv_state));

	/*
	 * Update the h/w rate map.
	 * NB: 0x80 for MCS is passed through unchanged
	 */
	FUNC3(&rates, 0, sizeof(rates));
	/* rate used to send management frames */
	rates.MgtRate = tp->mgmtrate;
	/* rate used to send multicast frames */
	rates.McastRate = tp->mcastrate;

	/* while here calculate EAPOL fixed rate cookie */
	mvp->mv_eapolformat = FUNC2(FUNC4(rates.MgtRate, ni));

	return FUNC5(mvp->mv_hvap,
	    tp->ucastrate != IEEE80211_FIXED_RATE_NONE ?
		RATE_FIXED : RATE_AUTO, &rates);
}
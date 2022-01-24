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
struct ieee80211vap {int /*<<< orphan*/  iv_ifp; struct ieee80211com* iv_ic; } ;
struct ieee80211_dfs_state {int /*<<< orphan*/  cac_timer; } ;
struct ieee80211com {TYPE_1__* ic_curchan; struct ieee80211_dfs_state ic_dfs; } ;
struct TYPE_2__ {int /*<<< orphan*/  ic_freq; int /*<<< orphan*/  ic_ieee; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAC_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  IEEE80211_NOTIFY_CAC_START ; 
 int /*<<< orphan*/  cac_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct ieee80211vap *vap)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct ieee80211_dfs_state *dfs = &ic->ic_dfs;

	FUNC0(ic);

	FUNC1(&dfs->cac_timer, CAC_TIMEOUT, cac_timeout, vap);
	FUNC3(vap->iv_ifp, "start %d second CAC timer on channel %u (%u MHz)\n",
	    FUNC4(CAC_TIMEOUT),
	    ic->ic_curchan->ic_ieee, ic->ic_curchan->ic_freq);
	FUNC2(ic, ic->ic_curchan, IEEE80211_NOTIFY_CAC_START);
}
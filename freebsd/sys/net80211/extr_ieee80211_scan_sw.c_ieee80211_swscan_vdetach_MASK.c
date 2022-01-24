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
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags; struct ieee80211_scan_state* ic_scan; } ;
struct ieee80211_scan_state {struct ieee80211vap* ss_vap; } ;

/* Variables and functions */
 int IEEE80211_F_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  ISCAN_ABORT ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_scan_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211vap *vap)
{
	struct ieee80211com *ic = vap->iv_ic;
	struct ieee80211_scan_state *ss = ic->ic_scan;

	FUNC0(ic);

	if (ss != NULL && ss->ss_vap == vap &&
	    (ic->ic_flags & IEEE80211_F_SCAN))
		FUNC1(ss, ISCAN_ABORT);
}
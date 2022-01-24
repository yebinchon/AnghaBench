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
struct ieee80211com {int ic_flags; int /*<<< orphan*/  ic_inact; int /*<<< orphan*/  ic_stageq; } ;

/* Variables and functions */
 int IEEE80211_F_CSAPENDING ; 
 int IEEE80211_INACT_WAIT ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,void (*) (void*),struct ieee80211com*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211com*) ; 

void
FUNC9(void *arg)
{
	struct ieee80211com *ic = arg;

	/*
	 * Defer timeout processing if a channel switch is pending.
	 * We typically need to be mute so not doing things that
	 * might generate frames is good to handle in one place.
	 * Suppressing the station timeout processing may extend the
	 * lifetime of inactive stations (by not decrementing their
	 * idle counters) but this should be ok unless the CSA is
	 * active for an unusually long time.
	 */
	if ((ic->ic_flags & IEEE80211_F_CSAPENDING) == 0) {
		FUNC6(ic);
		FUNC7(ic);
		FUNC3(&ic->ic_stageq, IEEE80211_INACT_WAIT);

		FUNC0(ic);
		FUNC4(ic);
		FUNC5(ic);
		FUNC8(ic);
		FUNC1(ic);
	}
	FUNC2(&ic->ic_inact, IEEE80211_INACT_WAIT*hz,
		ieee80211_node_timeout, ic);
}
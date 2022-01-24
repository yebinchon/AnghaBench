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
struct ieee80211vap {scalar_t__ iv_state; scalar_t__ iv_swbmiss_count; int /*<<< orphan*/  iv_swbmiss_period; int /*<<< orphan*/  iv_swbmiss; int /*<<< orphan*/  iv_swbmiss_task; int /*<<< orphan*/ * iv_bmiss; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int ic_flags; } ;

/* Variables and functions */
 int IEEE80211_F_SCAN ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 scalar_t__ IEEE80211_S_RUN ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211com*,int /*<<< orphan*/ *) ; 

void
FUNC4(void *arg)
{
	struct ieee80211vap *vap = arg;
	struct ieee80211com *ic = vap->iv_ic;

	FUNC0(ic);

	FUNC1(vap->iv_state >= IEEE80211_S_RUN,
	    ("wrong state %d", vap->iv_state));

	if (ic->ic_flags & IEEE80211_F_SCAN) {
		/*
		 * If scanning just ignore and reset state.  If we get a
		 * bmiss after coming out of scan because we haven't had
		 * time to receive a beacon then we should probe the AP
		 * before posting a real bmiss (unless iv_bmiss_max has
		 * been artifiically lowered).  A cleaner solution might
		 * be to disable the timer on scan start/end but to handle
		 * case of multiple sta vap's we'd need to disable the
		 * timers of all affected vap's.
		 */
		vap->iv_swbmiss_count = 0;
	} else if (vap->iv_swbmiss_count == 0) {
		if (vap->iv_bmiss != NULL)
			FUNC3(ic, &vap->iv_swbmiss_task);
	} else
		vap->iv_swbmiss_count = 0;
	FUNC2(&vap->iv_swbmiss, vap->iv_swbmiss_period,
		ieee80211_swbmiss, vap);
}
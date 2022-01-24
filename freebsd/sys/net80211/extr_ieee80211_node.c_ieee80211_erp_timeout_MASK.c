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
struct ieee80211com {int ic_flags_ext; scalar_t__ ic_nonerpsta; scalar_t__ ic_lastnonerp; } ;

/* Variables and functions */
 int IEEE80211_FEXT_NONERP_PR ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  IEEE80211_MSG_ASSOC ; 
 scalar_t__ IEEE80211_NONERP_PRESENT_AGE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  ni ; 
 int /*<<< orphan*/  ticks ; 
 int /*<<< orphan*/  vap ; 

__attribute__((used)) static void
FUNC4(struct ieee80211com *ic)
{

	FUNC0(ic);

	if ((ic->ic_flags_ext & IEEE80211_FEXT_NONERP_PR) &&
	    FUNC3(ticks, ic->ic_lastnonerp + IEEE80211_NONERP_PRESENT_AGE)) {
#if 0
		IEEE80211_NOTE(vap, IEEE80211_MSG_ASSOC, ni,
		    "%s", "age out non-ERP sta present on channel");
#endif
		ic->ic_flags_ext &= ~IEEE80211_FEXT_NONERP_PR;
		if (ic->ic_nonerpsta == 0)
			FUNC2(ic);
	}
}
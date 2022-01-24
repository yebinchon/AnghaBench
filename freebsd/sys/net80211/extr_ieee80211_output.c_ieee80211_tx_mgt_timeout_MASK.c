#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee80211vap {scalar_t__ iv_state; TYPE_1__* iv_ic; } ;
struct TYPE_3__ {int ic_flags; } ;

/* Variables and functions */
 int IEEE80211_F_SCAN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  IEEE80211_SCAN_FAIL_TIMEOUT ; 
 scalar_t__ IEEE80211_S_INIT ; 
 int /*<<< orphan*/  IEEE80211_S_SCAN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void *arg)
{
	struct ieee80211vap *vap = arg;

	FUNC0(vap->iv_ic);
	if (vap->iv_state != IEEE80211_S_INIT &&
	    (vap->iv_ic->ic_flags & IEEE80211_F_SCAN) == 0) {
		/*
		 * NB: it's safe to specify a timeout as the reason here;
		 *     it'll only be used in the right state.
		 */
		FUNC2(vap, IEEE80211_S_SCAN,
			IEEE80211_SCAN_FAIL_TIMEOUT);
	}
	FUNC1(vap->iv_ic);
}
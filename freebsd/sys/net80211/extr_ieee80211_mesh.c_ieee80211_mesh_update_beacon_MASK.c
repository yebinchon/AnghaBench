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
struct ieee80211vap {scalar_t__ iv_opmode; } ;
struct ieee80211_beacon_offsets {int /*<<< orphan*/  bo_flags; int /*<<< orphan*/  bo_meshconf; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_BEACON_MESHCONF ; 
 scalar_t__ IEEE80211_M_MBSS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ieee80211vap*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct ieee80211vap *vap,
	struct ieee80211_beacon_offsets *bo)
{
	FUNC0(vap->iv_opmode == IEEE80211_M_MBSS, ("not a MBSS vap"));

	if (FUNC3(bo->bo_flags, IEEE80211_BEACON_MESHCONF)) {
		(void)FUNC2(bo->bo_meshconf, vap);
		FUNC1(bo->bo_flags, IEEE80211_BEACON_MESHCONF);
	}
}
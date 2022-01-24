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
struct ieee80211_beacon_offsets {int /*<<< orphan*/  bo_flags; } ;
struct ieee80211vap {struct ieee80211_beacon_offsets iv_bcn_off; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

void
FUNC1(struct ieee80211vap *vap, int item)
{
	struct ieee80211_beacon_offsets *bo = &vap->iv_bcn_off;

	FUNC0(bo->bo_flags, item);
}
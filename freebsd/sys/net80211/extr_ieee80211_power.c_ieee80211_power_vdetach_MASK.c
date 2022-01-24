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
struct ieee80211vap {int /*<<< orphan*/ * iv_tim_bitmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_80211_POWER ; 

void
FUNC1(struct ieee80211vap *vap)
{
	if (vap->iv_tim_bitmap != NULL) {
		FUNC0(vap->iv_tim_bitmap, M_80211_POWER);
		vap->iv_tim_bitmap = NULL;
	}
}
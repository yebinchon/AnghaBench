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
struct ieee80211vap {int /*<<< orphan*/ * iv_nw_keys; } ;

/* Variables and functions */
 int IEEE80211_WEP_NKID ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211vap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*) ; 

void
FUNC3(struct ieee80211vap *vap)
{
	int i;

	FUNC1(vap);
	for (i = 0; i < IEEE80211_WEP_NKID; i++)
		(void) FUNC0(vap, &vap->iv_nw_keys[i]);
	FUNC2(vap);
}
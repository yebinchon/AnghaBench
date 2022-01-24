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
typedef  int /*<<< orphan*/  uint8_t ;
struct ieee80211vap {int iv_htcaps; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;

/* Variables and functions */
 int IEEE80211_HTC_SMPS ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*,int /*<<< orphan*/  const*) ; 

void
FUNC4(struct ieee80211_node *ni, const uint8_t *htcapie)
{
	struct ieee80211vap *vap = ni->ni_vap;

	FUNC3(ni, htcapie);
	if (vap->iv_htcaps & IEEE80211_HTC_SMPS)
		FUNC1(ni);
	FUNC2(ni);
	FUNC0(ni);
}
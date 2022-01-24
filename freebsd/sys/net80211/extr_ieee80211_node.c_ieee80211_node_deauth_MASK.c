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
struct ieee80211_node {scalar_t__ ni_associd; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_FC0_SUBTYPE_DEAUTH ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_node*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*) ; 

void
FUNC4(struct ieee80211_node *ni, int reason)
{
	/* NB: bump the refcnt to be sure temporary nodes are not reclaimed */
	FUNC3(ni);
	if (ni->ni_associd != 0)
		FUNC0(ni, IEEE80211_FC0_SUBTYPE_DEAUTH, reason);
	FUNC2(ni);
	FUNC1(ni);
}
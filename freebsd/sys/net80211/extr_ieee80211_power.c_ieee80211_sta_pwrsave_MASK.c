#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ieee80211vap {struct ieee80211_node* iv_bss; } ;
struct TYPE_2__ {scalar_t__ psq_len; } ;
struct ieee80211_node {int ni_flags; TYPE_1__ ni_psq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MSG_POWER ; 
 int IEEE80211_NODE_PWR_MGT ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211vap*,int /*<<< orphan*/ ,struct ieee80211_node*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*) ; 

void
FUNC4(struct ieee80211vap *vap, int enable)
{
	struct ieee80211_node *ni = vap->iv_bss;

	if (!((enable != 0) ^ ((ni->ni_flags & IEEE80211_NODE_PWR_MGT) != 0)))
		return;

	FUNC0(vap, IEEE80211_MSG_POWER, ni,
	    "sta power save mode %s", enable ? "on" : "off");
	if (!enable) {
		ni->ni_flags &= ~IEEE80211_NODE_PWR_MGT;
		FUNC2(FUNC1(ni));
		/*
		 * Flush any queued frames; we can do this immediately
		 * because we know they'll be queued behind the null
		 * data frame we send the ap.
		 * XXX can we use a data frame to take us out of ps?
		 */
		if (ni->ni_psq.psq_len != 0)
			FUNC3(ni);
	} else {
		ni->ni_flags |= IEEE80211_NODE_PWR_MGT;
		FUNC2(FUNC1(ni));
	}
}
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
struct ieee80211_tx_ampdu {int txa_flags; } ;
struct ieee80211_node {struct ieee80211_tx_ampdu* ni_tx_ampdu; } ;

/* Variables and functions */
 int IEEE80211_AGGR_NAK ; 
 int IEEE80211_AGGR_SETUP ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_tx_ampdu*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_tx_ampdu*) ; 

int
FUNC2(struct ieee80211_node *ni, int tid)
{
	struct ieee80211_tx_ampdu *tap;

	if (tid < 0 || tid > 15)
		return (0);
	tap = &ni->ni_tx_ampdu[tid];

	/* XXX locking */
	if ((tap->txa_flags & IEEE80211_AGGR_SETUP) == 0) {
		/* do deferred setup of state */
		FUNC1(tap);
	}
	/* XXX hack for not doing proper locking */
	tap->txa_flags &= ~IEEE80211_AGGR_NAK;
	FUNC0(tap);
	return (1);
}
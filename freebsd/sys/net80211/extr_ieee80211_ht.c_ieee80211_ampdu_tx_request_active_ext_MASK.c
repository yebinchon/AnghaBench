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
struct ieee80211_tx_ampdu {int /*<<< orphan*/  txa_flags; scalar_t__ txa_attempts; } ;
struct ieee80211_node {struct ieee80211_tx_ampdu* ni_tx_ampdu; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_AGGR_NAK ; 
 int /*<<< orphan*/  IEEE80211_AGGR_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_tx_ampdu*) ; 

int
FUNC1(struct ieee80211_node *ni, int tid,
    int status)
{
	struct ieee80211_tx_ampdu *tap;

	if (tid < 0 || tid > 15)
		return (0);
	tap = &ni->ni_tx_ampdu[tid];

	/* XXX locking */
	FUNC0(tap);
	if (status == 1) {
		tap->txa_flags |= IEEE80211_AGGR_RUNNING;
		tap->txa_attempts = 0;
	} else {
		/* mark tid so we don't try again */
		tap->txa_flags |= IEEE80211_AGGR_NAK;
	}
	return (1);
}
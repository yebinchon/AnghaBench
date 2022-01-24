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
struct ieee80211vap {TYPE_1__* iv_ic; } ;
struct ieee80211_ratectl_tx_stats {int flags; int /*<<< orphan*/  ni; } ;
struct TYPE_2__ {int /*<<< orphan*/  ic_sta; } ;

/* Variables and functions */
 int IEEE80211_RATECTL_TX_STATS_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_ratectl_tx_stats*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ieee80211vap*,int /*<<< orphan*/  (*) (struct ieee80211_ratectl_tx_stats*,int /*<<< orphan*/ ),struct ieee80211_ratectl_tx_stats*) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211vap *vap,
    struct ieee80211_ratectl_tx_stats *stats)
{

	if (stats->flags & IEEE80211_RATECTL_TX_STATS_NODE)
		FUNC0(stats, stats->ni);
	else {
		FUNC1(&vap->iv_ic->ic_sta, vap,
		    amrr_tx_update_cb, stats);
	}
}
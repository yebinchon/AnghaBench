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
struct mbuf {int dummy; } ;
struct ieee80211_rx_stats {int /*<<< orphan*/  c_nf; int /*<<< orphan*/  c_rssi; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
typedef  int /*<<< orphan*/  rxs ;
struct TYPE_2__ {int (* iv_input ) (struct ieee80211_node*,struct mbuf*,struct ieee80211_rx_stats*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_rx_stats*,int) ; 
 scalar_t__ FUNC1 (struct mbuf*,struct ieee80211_rx_stats*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*,struct ieee80211_rx_stats*) ; 
 int FUNC3 (struct ieee80211_node*,struct mbuf*,struct ieee80211_rx_stats*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(struct ieee80211_node *ni, struct mbuf *m)
{
	struct ieee80211_rx_stats rxs;

	/* try to read stats from mbuf */
	FUNC0(&rxs, sizeof(rxs));
	if (FUNC1(m, &rxs) != 0)
		return (-1);

	/* XXX should assert IEEE80211_R_NF and IEEE80211_R_RSSI are set */
	FUNC2(ni, &rxs);

	//return ieee80211_input(ni, m, rx->rssi, rx->nf);
	return ni->ni_vap->iv_input(ni, m, &rxs, rxs.c_rssi, rxs.c_nf);
}
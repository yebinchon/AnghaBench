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
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct ieee80211vap {struct ifnet* iv_ifp; } ;
struct ieee80211_rx_stats {int dummy; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 scalar_t__ FUNC0 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211vap*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC4(struct ieee80211_node *ni, struct mbuf *m,
    const struct ieee80211_rx_stats *rxs, int rssi, int nf)
{
	struct ieee80211vap *vap = ni->ni_vap;
	struct ifnet *ifp = vap->iv_ifp;

	FUNC2(ifp, IFCOUNTER_IPACKETS, 1);

	if (FUNC0(vap))
		FUNC1(vap, m);
	FUNC3(m);
	return -1;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;
struct ifnet {int dummy; } ;
struct ieee80211_node {TYPE_1__* ni_vap; } ;
struct TYPE_3__ {struct ifnet* iv_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OMCASTS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int M_MCAST ; 
 int M_TXCB ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*,struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 

void
FUNC4(struct ieee80211_node *ni, struct mbuf *m, int status)
{

	if (ni != NULL) {
		struct ifnet *ifp = ni->ni_vap->iv_ifp;

		if (status == 0) {
			FUNC2(ifp, IFCOUNTER_OBYTES, m->m_pkthdr.len);
			FUNC2(ifp, IFCOUNTER_OPACKETS, 1);
			if (m->m_flags & M_MCAST)
				FUNC2(ifp, IFCOUNTER_OMCASTS, 1);
		} else
			FUNC2(ifp, IFCOUNTER_OERRORS, 1);
		if (m->m_flags & M_TXCB)
			FUNC1(ni, m, status);
		FUNC0(ni);
	}
	FUNC3(m);
}
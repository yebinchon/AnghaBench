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
struct TYPE_2__ {int len; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct ifqueue {int dummy; } ;
struct ifnet {int if_drv_flags; int /*<<< orphan*/  (* if_start ) (struct ifnet*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_OMCASTS ; 
 int /*<<< orphan*/  IFCOUNTER_OQDROPS ; 
 int IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC0 (struct ifqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifqueue*) ; 
 int M_BCAST ; 
 int M_MCAST ; 
 int /*<<< orphan*/  FUNC2 (struct ifqueue*,struct mbuf*) ; 
 scalar_t__ FUNC3 (struct ifqueue*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 

int
FUNC7(struct ifqueue *ifq, struct mbuf *m, struct ifnet *ifp, int adjust)
{
	int active = 0;

	FUNC0(ifq);
	if (FUNC3(ifq)) {
		FUNC1(ifq);
		FUNC4(ifp, IFCOUNTER_OQDROPS, 1);
		FUNC5(m);
		return (0);
	}
	if (ifp != NULL) {
		FUNC4(ifp, IFCOUNTER_OBYTES, m->m_pkthdr.len + adjust);
		if (m->m_flags & (M_BCAST|M_MCAST))
			FUNC4(ifp, IFCOUNTER_OMCASTS, 1);
		active = ifp->if_drv_flags & IFF_DRV_OACTIVE;
	}
	FUNC2(ifq, m);
	FUNC1(ifq);
	if (ifp != NULL && !active)
		(*(ifp)->if_start)(ifp);
	return (1);
}
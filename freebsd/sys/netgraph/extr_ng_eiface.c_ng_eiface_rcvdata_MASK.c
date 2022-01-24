#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct ifnet* rcvif; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_flags; int if_drv_flags; int /*<<< orphan*/  (* if_input ) (struct ifnet* const,struct mbuf*) ;} ;
typedef  TYPE_2__* priv_p ;
typedef  int /*<<< orphan*/  item_p ;
typedef  int /*<<< orphan*/  hook_p ;
struct TYPE_5__ {struct ifnet* ifp; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETDOWN ; 
 scalar_t__ ETHER_HDR_LEN ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet* const,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC6 (struct mbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet* const,struct mbuf*) ; 

__attribute__((used)) static int
FUNC8(hook_p hook, item_p item)
{
	const priv_p priv = FUNC4(FUNC3(hook));
	struct ifnet *const ifp = priv->ifp;
	struct mbuf *m;

	FUNC0(item, m);
	FUNC1(item);

	if (!((ifp->if_flags & IFF_UP) &&
	    (ifp->if_drv_flags & IFF_DRV_RUNNING))) {
		FUNC2(m);
		return (ENETDOWN);
	}

	if (m->m_len < ETHER_HDR_LEN) {
		m = FUNC6(m, ETHER_HDR_LEN);
		if (m == NULL)
			return (EINVAL);
	}

	/* Note receiving interface */
	m->m_pkthdr.rcvif = ifp;

	/* Update interface stats */
	FUNC5(ifp, IFCOUNTER_IPACKETS, 1);

	(*ifp->if_input)(ifp, m);

	/* Done */
	return (0);
}
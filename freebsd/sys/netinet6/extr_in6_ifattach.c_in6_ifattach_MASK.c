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
struct in6_ifaddr {int /*<<< orphan*/  ia_ifa; } ;
struct ifnet {int if_type; int if_flags; scalar_t__ if_mtu; int /*<<< orphan*/ ** if_afdata; } ;
struct epoch_tracker {int dummy; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 size_t AF_INET6 ; 
 int IFF_LOOPBACK ; 
 int IFF_MULTICAST ; 
#define  IFT_STF 128 
 int /*<<< orphan*/  LOG_INFO ; 
 int ND6_IFF_AUTO_LINKLOCAL ; 
 int ND6_IFF_IFDISABLED ; 
 int ND6_IFF_NO_DAD ; 
 TYPE_1__* FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC2 (struct epoch_tracker) ; 
 scalar_t__ V_in6_maxmtu ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  in6addr_loopback ; 
 struct in6_ifaddr* FUNC7 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct in6_ifaddr* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10(struct ifnet *ifp, struct ifnet *altifp)
{
	struct in6_ifaddr *ia;

	if (ifp->if_afdata[AF_INET6] == NULL)
		return;
	/*
	 * quirks based on interface type
	 */
	switch (ifp->if_type) {
	case IFT_STF:
		/*
		 * 6to4 interface is a very special kind of beast.
		 * no multicast, no linklocal.  RFC2529 specifies how to make
		 * linklocals for 6to4 interface, but there's no use and
		 * it is rather harmful to have one.
		 */
		FUNC0(ifp)->flags &= ~ND6_IFF_AUTO_LINKLOCAL;
		FUNC0(ifp)->flags |= ND6_IFF_NO_DAD;
		break;
	default:
		break;
	}

	/*
	 * usually, we require multicast capability to the interface
	 */
	if ((ifp->if_flags & IFF_MULTICAST) == 0) {
		FUNC9((LOG_INFO, "in6_ifattach: "
		    "%s is not multicast capable, IPv6 not enabled\n",
		    FUNC3(ifp)));
		return;
	}

	/*
	 * assign loopback address for loopback interface.
	 */
	if ((ifp->if_flags & IFF_LOOPBACK) != 0) {
		/*
		 * check that loopback address doesn't exist yet.
		 */
		ia = FUNC8(&in6addr_loopback, 0);
		if (ia == NULL)
			FUNC6(ifp);
		else
			FUNC4(&ia->ia_ifa);
	}

	/*
	 * assign a link-local address, if there's none.
	 */
	if (!(FUNC0(ifp)->flags & ND6_IFF_IFDISABLED) &&
	    FUNC0(ifp)->flags & ND6_IFF_AUTO_LINKLOCAL) {
		struct epoch_tracker et;

		FUNC1(et);
		ia = FUNC7(ifp, 0);
		FUNC2(et);
		if (ia == NULL)
			FUNC5(ifp, altifp);
		else
			FUNC4(&ia->ia_ifa);
	}

	/* update dynamically. */
	if (V_in6_maxmtu < ifp->if_mtu)
		V_in6_maxmtu = ifp->if_mtu;
}
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
struct in6_addr {int dummy; } ;
struct TYPE_3__ {struct in6_addr sin6_addr; } ;
struct in6_ifaddr {TYPE_1__ ia_addr; int /*<<< orphan*/  ia6_flags; } ;
struct ifnet {int if_type; } ;
struct ifaddr {struct ifnet* ifa_ifp; } ;
struct dadq {int /*<<< orphan*/  dad_na_icount; int /*<<< orphan*/  dad_ns_lcount; int /*<<< orphan*/  dad_ns_ocount; int /*<<< orphan*/  dad_ns_icount; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
#define  IFT_ATM 131 
#define  IFT_ETHER 130 
#define  IFT_IEEE1394 129 
#define  IFT_INFINIBAND 128 
 int /*<<< orphan*/  FUNC0 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  IN6_IFF_DUPLICATED ; 
 int /*<<< orphan*/  IN6_IFF_TENTATIVE ; 
 scalar_t__ FUNC1 (struct in6_addr*) ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  ND6_IFF_IFDISABLED ; 
 TYPE_2__* FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static void
FUNC7(struct ifaddr *ifa, struct dadq *dp)
{
	struct in6_ifaddr *ia = (struct in6_ifaddr *)ifa;
	struct ifnet *ifp;
	char ip6buf[INET6_ADDRSTRLEN];

	FUNC6(LOG_ERR, "%s: DAD detected duplicate IPv6 address %s: "
	    "NS in/out/loopback=%d/%d/%d, NA in=%d\n",
	    FUNC3(ifa->ifa_ifp), FUNC5(ip6buf, &ia->ia_addr.sin6_addr),
	    dp->dad_ns_icount, dp->dad_ns_ocount, dp->dad_ns_lcount,
	    dp->dad_na_icount);

	ia->ia6_flags &= ~IN6_IFF_TENTATIVE;
	ia->ia6_flags |= IN6_IFF_DUPLICATED;

	ifp = ifa->ifa_ifp;
	FUNC6(LOG_ERR, "%s: DAD complete for %s - duplicate found\n",
	    FUNC3(ifp), FUNC5(ip6buf, &ia->ia_addr.sin6_addr));
	FUNC6(LOG_ERR, "%s: manual intervention required\n",
	    FUNC3(ifp));

	/*
	 * If the address is a link-local address formed from an interface
	 * identifier based on the hardware address which is supposed to be
	 * uniquely assigned (e.g., EUI-64 for an Ethernet interface), IP
	 * operation on the interface SHOULD be disabled.
	 * [RFC 4862, Section 5.4.5]
	 */
	if (FUNC1(&ia->ia_addr.sin6_addr)) {
		struct in6_addr in6;

		/*
		 * To avoid over-reaction, we only apply this logic when we are
		 * very sure that hardware addresses are supposed to be unique.
		 */
		switch (ifp->if_type) {
		case IFT_ETHER:
		case IFT_ATM:
		case IFT_IEEE1394:
		case IFT_INFINIBAND:
			in6 = ia->ia_addr.sin6_addr;
			if (FUNC4(ifp, &in6) == 0 &&
			    FUNC0(&ia->ia_addr.sin6_addr, &in6)) {
				FUNC2(ifp)->flags |= ND6_IFF_IFDISABLED;
				FUNC6(LOG_ERR, "%s: possible hardware address "
				    "duplication detected, disable IPv6\n",
				    FUNC3(ifp));
			}
			break;
		}
	}
}
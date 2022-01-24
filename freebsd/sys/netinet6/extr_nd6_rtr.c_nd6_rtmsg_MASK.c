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
struct rtentry {int /*<<< orphan*/  rt_fibnum; int /*<<< orphan*/  rt_flags; TYPE_1__* rt_ifa; struct ifnet* rt_ifp; int /*<<< orphan*/  rt_gateway; } ;
struct rt_addrinfo {int /*<<< orphan*/ * rti_info; } ;
struct ifnet {int /*<<< orphan*/  if_addrhead; } ;
struct ifaddr {int /*<<< orphan*/  ifa_addr; } ;
struct epoch_tracker {int dummy; } ;
typedef  int /*<<< orphan*/  info ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  ifa_addr; } ;

/* Variables and functions */
 struct ifaddr* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC2 (struct epoch_tracker) ; 
 size_t RTAX_DST ; 
 size_t RTAX_GATEWAY ; 
 size_t RTAX_IFA ; 
 size_t RTAX_IFP ; 
 size_t RTAX_NETMASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC8 (int,struct rt_addrinfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(int cmd, struct rtentry *rt)
{
	struct rt_addrinfo info;
	struct ifnet *ifp;
	struct ifaddr *ifa;

	FUNC3((caddr_t)&info, sizeof(info));
	info.rti_info[RTAX_DST] = FUNC6(rt);
	info.rti_info[RTAX_GATEWAY] = rt->rt_gateway;
	info.rti_info[RTAX_NETMASK] = FUNC7(rt);
	ifp = rt->rt_ifp;
	if (ifp != NULL) {
		struct epoch_tracker et;

		FUNC1(et);
		ifa = FUNC0(&ifp->if_addrhead);
		info.rti_info[RTAX_IFP] = ifa->ifa_addr;
		FUNC5(ifa);
		FUNC2(et);
		info.rti_info[RTAX_IFA] = rt->rt_ifa->ifa_addr;
	} else
		ifa = NULL;

	FUNC8(cmd, &info, rt->rt_flags, 0, rt->rt_fibnum);
	if (ifa != NULL)
		FUNC4(ifa);
}
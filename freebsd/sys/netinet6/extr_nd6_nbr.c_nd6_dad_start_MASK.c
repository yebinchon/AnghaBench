#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sin6_addr; } ;
struct in6_ifaddr {int ia6_flags; TYPE_1__ ia_addr; } ;
struct ifaddr {TYPE_2__* ifa_ifp; } ;
struct epoch_tracker {int dummy; } ;
struct dadq {int /*<<< orphan*/  dad_refcnt; scalar_t__ dad_loopbackprobe; scalar_t__ dad_ns_lcount; scalar_t__ dad_ns_tcount; scalar_t__ dad_ns_ocount; scalar_t__ dad_na_icount; scalar_t__ dad_ns_icount; scalar_t__ dad_count; struct ifaddr* dad_ifa; int /*<<< orphan*/  dad_vnet; int /*<<< orphan*/  dad_timer_ch; } ;
struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {int if_flags; int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int IN6_IFF_ANYCAST ; 
 int IN6_IFF_TENTATIVE ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  M_IP6NDP ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int ND6_IFF_IFDISABLED ; 
 int ND6_IFF_NO_DAD ; 
 TYPE_3__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC3 (struct epoch_tracker) ; 
 scalar_t__ V_ip6_dad_count ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curvnet ; 
 char* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifaddr*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 
 struct dadq* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct dadq*) ; 
 struct dadq* FUNC11 (struct ifaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC13 (struct dadq*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int) ; 

void
FUNC16(struct ifaddr *ifa, int delay)
{
	struct in6_ifaddr *ia = (struct in6_ifaddr *)ifa;
	struct dadq *dp;
	char ip6buf[INET6_ADDRSTRLEN];
	struct epoch_tracker et;

	FUNC0((ia->ia6_flags & IN6_IFF_TENTATIVE) != 0,
	    ("starting DAD on non-tentative address %p", ifa));

	/*
	 * If we don't need DAD, don't do it.
	 * There are several cases:
	 * - DAD is disabled globally or on the interface
	 * - the interface address is anycast
	 */
	if ((ia->ia6_flags & IN6_IFF_ANYCAST) != 0 ||
	    V_ip6_dad_count == 0 ||
	    (FUNC1(ifa->ifa_ifp)->flags & ND6_IFF_NO_DAD) != 0) {
		ia->ia6_flags &= ~IN6_IFF_TENTATIVE;
		return;
	}
	if ((ifa->ifa_ifp->if_flags & IFF_UP) == 0 ||
	    (ifa->ifa_ifp->if_drv_flags & IFF_DRV_RUNNING) == 0 ||
	    (FUNC1(ifa->ifa_ifp)->flags & ND6_IFF_IFDISABLED) != 0)
		return;

	if ((dp = FUNC11(ifa, NULL)) != NULL) {
		/*
		 * DAD is already in progress.  Let the existing entry
		 * finish it.
		 */
		FUNC12(dp);
		return;
	}

	dp = FUNC9(sizeof(*dp), M_IP6NDP, M_NOWAIT | M_ZERO);
	if (dp == NULL) {
		FUNC8(LOG_ERR, "nd6_dad_start: memory allocation failed for "
			"%s(%s)\n",
			FUNC7(ip6buf, &ia->ia_addr.sin6_addr),
			ifa->ifa_ifp ? FUNC5(ifa->ifa_ifp) : "???");
		return;
	}
	FUNC4(&dp->dad_timer_ch, 0);
#ifdef VIMAGE
	dp->dad_vnet = curvnet;
#endif
	FUNC14((LOG_DEBUG, "%s: starting DAD for %s\n", FUNC5(ifa->ifa_ifp),
	    FUNC7(ip6buf, &ia->ia_addr.sin6_addr)));

	/*
	 * Send NS packet for DAD, ip6_dad_count times.
	 * Note that we must delay the first transmission, if this is the
	 * first packet to be sent from the interface after interface
	 * (re)initialization.
	 */
	dp->dad_ifa = ifa;
	FUNC6(dp->dad_ifa);
	dp->dad_count = V_ip6_dad_count;
	dp->dad_ns_icount = dp->dad_na_icount = 0;
	dp->dad_ns_ocount = dp->dad_ns_tcount = 0;
	dp->dad_ns_lcount = dp->dad_loopbackprobe = 0;

	/* Add this to the dadq and add a reference for the dadq. */
	FUNC15(&dp->dad_refcnt, 1);
	FUNC10(dp);
	FUNC2(et);
	FUNC13(dp, delay, 0);
	FUNC3(et);
}
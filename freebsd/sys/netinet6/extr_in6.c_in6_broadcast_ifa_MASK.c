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
struct in6_multi {scalar_t__ in6m_state; int in6m_timer; } ;
struct in6_ifaddr {int ia6_flags; int /*<<< orphan*/  ia_ifa; } ;
struct in6_aliasreq {int dummy; } ;
struct ifnet {int if_flags; } ;
struct ifaddr {int dummy; } ;

/* Variables and functions */
 int IFF_MULTICAST ; 
 int IN6_IFAUPDATE_DADDELAY ; 
 int IN6_IFF_TENTATIVE ; 
 int MAX_RTR_SOLICITATION_DELAY ; 
 scalar_t__ MLD_REPORTING_MEMBER ; 
 int /*<<< orphan*/  RTM_ADD ; 
 int FUNC0 () ; 
 int hz ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct in6_ifaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ifnet*,struct in6_aliasreq*,struct in6_ifaddr*,int,struct in6_multi**) ; 
 int FUNC5 (struct in6_ifaddr*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifaddr*,int) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp, struct in6_aliasreq *ifra,
    struct in6_ifaddr *ia, int flags)
{
	struct in6_multi *in6m_sol;
	int error = 0;

	/* Add local address to lltable, if necessary (ex. on p2p link). */
	if ((error = FUNC5(ia)) != 0) {
		FUNC3(&ia->ia_ifa);
		FUNC1(&ia->ia_ifa);
		return (error);
	}

	/* Join necessary multicast groups. */
	in6m_sol = NULL;
	if ((ifp->if_flags & IFF_MULTICAST) != 0) {
		error = FUNC4(ifp, ifra, ia, flags, &in6m_sol);
		if (error != 0) {
			FUNC3(&ia->ia_ifa);
			FUNC1(&ia->ia_ifa);
			return (error);
		}
	}

	/* Perform DAD, if the address is TENTATIVE. */
	if ((ia->ia6_flags & IN6_IFF_TENTATIVE)) {
		int delay, mindelay, maxdelay;

		delay = 0;
		if ((flags & IN6_IFAUPDATE_DADDELAY)) {
			/*
			 * We need to impose a delay before sending an NS
			 * for DAD.  Check if we also needed a delay for the
			 * corresponding MLD message.  If we did, the delay
			 * should be larger than the MLD delay (this could be
			 * relaxed a bit, but this simple logic is at least
			 * safe).
			 * XXX: Break data hiding guidelines and look at
			 * state for the solicited multicast group.
			 */
			mindelay = 0;
			if (in6m_sol != NULL &&
			    in6m_sol->in6m_state == MLD_REPORTING_MEMBER) {
				mindelay = in6m_sol->in6m_timer;
			}
			maxdelay = MAX_RTR_SOLICITATION_DELAY * hz;
			if (maxdelay - mindelay == 0)
				delay = 0;
			else {
				delay =
				    (FUNC0() % (maxdelay - mindelay)) +
				    mindelay;
			}
		}
		FUNC6((struct ifaddr *)ia, delay);
	}

	FUNC2(ia, RTM_ADD);
	FUNC1(&ia->ia_ifa);
	return (error);
}
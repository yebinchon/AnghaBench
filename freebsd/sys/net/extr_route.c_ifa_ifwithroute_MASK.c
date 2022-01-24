#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
typedef  struct sockaddr {int sa_family; } const sockaddr ;
struct rtentry {struct ifaddr* rt_ifa; } ;
struct ifaddr {int /*<<< orphan*/  ifa_ifp; TYPE_2__* ifa_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_8__ {TYPE_1__ sin_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_6__ {scalar_t__ sa_family; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int RTF_GATEWAY ; 
 int RTF_HOST ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 struct ifaddr* FUNC4 (struct sockaddr const*) ; 
 struct ifaddr* FUNC5 (struct sockaddr const*,int /*<<< orphan*/ ) ; 
 struct ifaddr* FUNC6 (struct sockaddr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ifaddr* FUNC7 (struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  net_epoch_preempt ; 
 int /*<<< orphan*/  FUNC9 (struct rtentry*) ; 
 struct rtentry* FUNC10 (struct sockaddr const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ) ; 

struct ifaddr *
FUNC13(int flags, const struct sockaddr *dst, struct sockaddr *gateway,
				u_int fibnum)
{
	struct ifaddr *ifa;
	int not_found = 0;

	FUNC1(FUNC8(net_epoch_preempt));
	if ((flags & RTF_GATEWAY) == 0) {
		/*
		 * If we are adding a route to an interface,
		 * and the interface is a pt to pt link
		 * we should search for the destination
		 * as our clue to the interface.  Otherwise
		 * we can use the local address.
		 */
		ifa = NULL;
		if (flags & RTF_HOST)
			ifa = FUNC5(dst, fibnum);
		if (ifa == NULL)
			ifa = FUNC4(gateway);
	} else {
		/*
		 * If we are adding a route to a remote net
		 * or host, the gateway may still be on the
		 * other end of a pt to pt link.
		 */
		ifa = FUNC5(gateway, fibnum);
	}
	if (ifa == NULL)
		ifa = FUNC6(gateway, 0, fibnum);
	if (ifa == NULL) {
		struct rtentry *rt;

		rt = FUNC10(gateway, 0, flags, fibnum);
		if (rt == NULL)
			goto out;
		/*
		 * dismiss a gateway that is reachable only
		 * through the default router
		 */
		switch (gateway->sa_family) {
		case AF_INET:
			if (FUNC11(FUNC9(rt))->sin_addr.s_addr == INADDR_ANY)
				not_found = 1;
			break;
		case AF_INET6:
			if (FUNC0(&FUNC12(FUNC9(rt))->sin6_addr))
				not_found = 1;
			break;
		default:
			break;
		}
		if (!not_found && rt->rt_ifa != NULL) {
			ifa = rt->rt_ifa;
		}
		FUNC2(rt);
		FUNC3(rt);
		if (not_found || ifa == NULL)
			goto out;
	}
	if (ifa->ifa_addr->sa_family != dst->sa_family) {
		struct ifaddr *oifa = ifa;
		ifa = FUNC7(dst, ifa->ifa_ifp);
		if (ifa == NULL)
			ifa = oifa;
	}
 out:
	return (ifa);
}
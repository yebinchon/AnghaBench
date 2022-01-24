#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_4__ sin_addr; } ;
struct rtentry {int rt_flags; scalar_t__ rt_mtu; TYPE_5__* rt_ifp; TYPE_2__* rt_ifa; } ;
struct radix_node {int dummy; } ;
struct radix_head {int dummy; } ;
struct epoch_tracker {int dummy; } ;
struct TYPE_10__ {scalar_t__ if_mtu; } ;
struct TYPE_6__ {scalar_t__ s_addr; } ;
struct TYPE_8__ {TYPE_1__ sin_addr; } ;
struct TYPE_7__ {int /*<<< orphan*/  ifa_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC2 (struct epoch_tracker) ; 
 int RTF_BROADCAST ; 
 int RTF_HOST ; 
 int RTF_LOCAL ; 
 int RTF_MULTICAST ; 
 int FUNC3 (TYPE_4__,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct radix_node* FUNC5 (void*,void*,struct radix_head*,struct radix_node*) ; 
 scalar_t__ FUNC6 (struct rtentry*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct radix_node *
FUNC8(void *v_arg, void *n_arg, struct radix_head *head,
    struct radix_node *treenodes)
{
	struct rtentry *rt = (struct rtentry *)treenodes;
	struct sockaddr_in *sin = (struct sockaddr_in *)FUNC6(rt);

	/*
	 * A little bit of help for both IP output and input:
	 *   For host routes, we make sure that RTF_BROADCAST
	 *   is set for anything that looks like a broadcast address.
	 *   This way, we can avoid an expensive call to in_broadcast()
	 *   in ip_output() most of the time (because the route passed
	 *   to ip_output() is almost always a host route).
	 *
	 *   We also do the same for local addresses, with the thought
	 *   that this might one day be used to speed up ip_input().
	 *
	 * We also mark routes to multicast addresses as such, because
	 * it's easy to do and might be useful (but this is much more
	 * dubious since it's so easy to inspect the address).
	 */
	if (rt->rt_flags & RTF_HOST) {
		struct epoch_tracker et;
		bool bcast;

		FUNC1(et);
		bcast = FUNC3(sin->sin_addr, rt->rt_ifp);
		FUNC2(et);
		if (bcast)
			rt->rt_flags |= RTF_BROADCAST;
		else if (FUNC7(rt->rt_ifa->ifa_addr)->sin_addr.s_addr ==
		    sin->sin_addr.s_addr)
			rt->rt_flags |= RTF_LOCAL;
	}
	if (FUNC0(FUNC4(sin->sin_addr.s_addr)))
		rt->rt_flags |= RTF_MULTICAST;

	if (rt->rt_ifp != NULL) {

		/*
		 * Check route MTU:
		 * inherit interface MTU if not set or
		 * check if MTU is too large.
		 */
		if (rt->rt_mtu == 0) {
			rt->rt_mtu = rt->rt_ifp->if_mtu;
		} else if (rt->rt_mtu > rt->rt_ifp->if_mtu)
			rt->rt_mtu = rt->rt_ifp->if_mtu;
	}

	return (FUNC5(v_arg, n_arg, head, treenodes));
}
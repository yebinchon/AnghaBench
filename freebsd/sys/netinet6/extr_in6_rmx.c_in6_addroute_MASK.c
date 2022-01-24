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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; } ;
struct rtentry {int rt_flags; scalar_t__ rt_mtu; int /*<<< orphan*/ * rt_ifp; TYPE_1__* rt_ifa; } ;
struct radix_node {int dummy; } ;
struct radix_head {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  sin6_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifa_addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int RTF_HOST ; 
 int RTF_LOCAL ; 
 int RTF_MULTICAST ; 
 struct radix_node* FUNC3 (void*,void*,struct radix_head*,struct radix_node*) ; 
 scalar_t__ FUNC4 (struct rtentry*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct radix_node *
FUNC6(void *v_arg, void *n_arg, struct radix_head *head,
    struct radix_node *treenodes)
{
	struct rtentry *rt = (struct rtentry *)treenodes;
	struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)FUNC4(rt);

	if (FUNC1(&sin6->sin6_addr))
		rt->rt_flags |= RTF_MULTICAST;

	/*
	 * A little bit of help for both IPv6 output and input:
	 *   For local addresses, we make sure that RTF_LOCAL is set,
	 *   with the thought that this might one day be used to speed up
	 *   ip_input().
	 *
	 * We also mark routes to multicast addresses as such, because
	 * it's easy to do and might be useful (but this is much more
	 * dubious since it's so easy to inspect the address).  (This
	 * is done above.)
	 *
	 * XXX
	 * should elaborate the code.
	 */
	if (rt->rt_flags & RTF_HOST) {
		if (FUNC0(&FUNC5(rt->rt_ifa->ifa_addr)
					->sin6_addr,
				       &sin6->sin6_addr)) {
			rt->rt_flags |= RTF_LOCAL;
		}
	}

	if (rt->rt_ifp != NULL) {

		/*
		 * Check route MTU:
		 * inherit interface MTU if not set or
		 * check if MTU is too large.
		 */
		if (rt->rt_mtu == 0) {
			rt->rt_mtu = FUNC2(rt->rt_ifp);
		} else if (rt->rt_mtu > FUNC2(rt->rt_ifp))
			rt->rt_mtu = FUNC2(rt->rt_ifp);
	}

	return (FUNC3(v_arg, n_arg, head, treenodes));
}
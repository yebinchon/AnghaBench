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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct rtentry {int rt_flags; scalar_t__ rt_ifp; } ;
struct route {struct rtentry* ro_rt; int /*<<< orphan*/  ro_dst; } ;
struct radix_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int RTF_UP ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int /*<<< orphan*/ * FUNC5 (struct radix_node*) ; 
 struct rtentry* FUNC6 (struct rtentry*,int /*<<< orphan*/ ) ; 
 struct rtentry* FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC8(struct route *ro, uint32_t hash, u_int fibnum)
{
	struct rtentry *rt;

	/*
	 * XXX we don't attempt to lookup cached route again; what should
	 * be done for sendto(3) case?
	 */
	if (ro->ro_rt && ro->ro_rt->rt_ifp && (ro->ro_rt->rt_flags & RTF_UP)
	    && FUNC2(ro->ro_rt->rt_ifp))
		return;				 
	ro->ro_rt = FUNC7(&ro->ro_dst, 1, 0, fibnum);

	/* if the route does not exist or it is not multipath, don't care */
	if (ro->ro_rt == NULL)
		return;
	if (FUNC5((struct radix_node *)ro->ro_rt) == NULL) {
		FUNC4(ro->ro_rt);
		return;
	}

	rt = FUNC6(ro->ro_rt, hash);
	/* XXX try filling rt_gwroute and avoid unreachable gw  */

	/* gw selection has failed - there must be only zero weight routes */
	if (!rt) {
		FUNC4(ro->ro_rt);
		ro->ro_rt = NULL;
		return;
	}
	if (ro->ro_rt != rt) {
		FUNC0(ro->ro_rt);
		ro->ro_rt = rt;
		FUNC3(ro->ro_rt);
		FUNC1(ro->ro_rt);

	} 
	FUNC4(ro->ro_rt);
}
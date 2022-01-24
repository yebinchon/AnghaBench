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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  u_int ;
struct rtentry {int rt_flags; int /*<<< orphan*/ * rt_ifp; } ;
struct route {struct rtentry* ro_rt; int /*<<< orphan*/  ro_dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rtentry*) ; 
 int RTF_UP ; 
 int /*<<< orphan*/  FUNC1 (struct rtentry*) ; 
 struct rtentry* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct route *ro, u_long ignore, u_int fibnum)
{
	struct rtentry *rt;

	if ((rt = ro->ro_rt) != NULL) {
		if (rt->rt_ifp != NULL && rt->rt_flags & RTF_UP)
			return;
		FUNC0(rt);
		ro->ro_rt = NULL;
	}
	ro->ro_rt = FUNC2(&ro->ro_dst, 1, ignore, fibnum);
	if (ro->ro_rt)
		FUNC1(ro->ro_rt);
}
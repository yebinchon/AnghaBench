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
typedef  scalar_t__ uint32_t ;
struct rtentry {struct rtentry* rt_chain; } ;
struct TYPE_2__ {int /*<<< orphan*/ * rti_info; void* rti_filterdata; int /*<<< orphan*/ * rti_filter; } ;
struct rt_delinfo {TYPE_1__ info; struct rtentry* head; struct rib_head* rnh; } ;
struct rib_head {int /*<<< orphan*/  head; int /*<<< orphan*/  (* rnh_walktree ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rt_delinfo*) ;} ;
typedef  int /*<<< orphan*/  rt_filter_f_t ;
typedef  int /*<<< orphan*/  di ;

/* Variables and functions */
 int AF_MAX ; 
 int AF_UNSPEC ; 
 int /*<<< orphan*/  FUNC0 (struct rib_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct rib_head*) ; 
 size_t RTAX_DST ; 
 size_t RTAX_NETMASK ; 
 int /*<<< orphan*/  FUNC2 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct rt_delinfo*,int) ; 
 int /*<<< orphan*/  rt_checkdelroute ; 
 int /*<<< orphan*/  FUNC4 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct rtentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct rtentry*,TYPE_1__*) ; 
 scalar_t__ rt_numfibs ; 
 struct rib_head* FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rt_delinfo*) ; 

void
FUNC9(int af, rt_filter_f_t *filter_f, void *arg)
{
	struct rib_head *rnh;
	struct rt_delinfo di;
	struct rtentry *rt;
	uint32_t fibnum;
	int i, start, end;

	FUNC3(&di, sizeof(di));
	di.info.rti_filter = filter_f;
	di.info.rti_filterdata = arg;

	for (fibnum = 0; fibnum < rt_numfibs; fibnum++) {
		/* Do we want some specific family? */
		if (af != AF_UNSPEC) {
			start = af;
			end = af;
		} else {
			start = 1;
			end = AF_MAX;
		}

		for (i = start; i <= end; i++) {
			rnh = FUNC7(fibnum, i);
			if (rnh == NULL)
				continue;
			di.rnh = rnh;

			FUNC0(rnh);
			rnh->rnh_walktree(&rnh->head, rt_checkdelroute, &di);
			FUNC1(rnh);

			if (di.head == NULL)
				continue;

			/* We might have something to reclaim */
			while (di.head != NULL) {
				rt = di.head;
				di.head = rt->rt_chain;
				rt->rt_chain = NULL;

				/* TODO std rt -> rt_addrinfo export */
				di.info.rti_info[RTAX_DST] = FUNC4(rt);
				di.info.rti_info[RTAX_NETMASK] = FUNC5(rt);

				FUNC6(rt, &di.info);
				FUNC2(rt);
			}

		}
	}
}
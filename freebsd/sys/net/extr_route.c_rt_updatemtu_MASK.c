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
struct rib_head {int /*<<< orphan*/  head; int /*<<< orphan*/  (* rnh_walktree ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct if_mtuinfo*) ;} ;
struct ifnet {int dummy; } ;
struct if_mtuinfo {int /*<<< orphan*/  mtu; struct ifnet* ifp; } ;

/* Variables and functions */
 int AF_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct rib_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct rib_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int) ; 
 int /*<<< orphan*/  if_updatemtu_cb ; 
 int rt_numfibs ; 
 struct rib_head* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct if_mtuinfo*) ; 

void
FUNC5(struct ifnet *ifp)
{
	struct if_mtuinfo ifmtu;
	struct rib_head *rnh;
	int i, j;

	ifmtu.ifp = ifp;

	/*
	 * Try to update rt_mtu for all routes using this interface
	 * Unfortunately the only way to do this is to traverse all
	 * routing tables in all fibs/domains.
	 */
	for (i = 1; i <= AF_MAX; i++) {
		ifmtu.mtu = FUNC2(ifp, i);
		for (j = 0; j < rt_numfibs; j++) {
			rnh = FUNC3(j, i);
			if (rnh == NULL)
				continue;
			FUNC0(rnh);
			rnh->rnh_walktree(&rnh->head, if_updatemtu_cb, &ifmtu);
			FUNC1(rnh);
		}
	}
}
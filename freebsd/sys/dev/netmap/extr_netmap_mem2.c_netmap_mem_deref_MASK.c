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
struct netmap_mem_d {int active; int nm_grp; scalar_t__ lasterr; TYPE_1__* ops; int /*<<< orphan*/ * pools; } ;
struct netmap_adapter {scalar_t__ active_fds; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* nmd_deref ) (struct netmap_mem_d*) ;} ;

/* Variables and functions */
 size_t NETMAP_BUF_POOL ; 
 int /*<<< orphan*/  FUNC0 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC2 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct netmap_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct netmap_mem_d*) ; 

int
FUNC5(struct netmap_mem_d *nmd, struct netmap_adapter *na)
{
	int last_user = 0;
	FUNC0(nmd);
	if (na->active_fds <= 0)
		FUNC3(&nmd->pools[NETMAP_BUF_POOL], na);
	if (nmd->active == 1) {
		last_user = 1;
		/*
		 * Reset the allocator when it falls out of use so that any
		 * pool resources leaked by unclean application exits are
		 * reclaimed.
		 */
		FUNC2(nmd);
	}
	nmd->ops->nmd_deref(nmd);

	nmd->active--;
	if (last_user) {
		nmd->nm_grp = -1;
		nmd->lasterr = 0;
	}

	FUNC1(nmd);
	return last_user;
}
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
struct netmap_mem_d {int lasterr; int /*<<< orphan*/ * pools; TYPE_1__* ops; int /*<<< orphan*/  active; } ;
struct netmap_adapter {scalar_t__ pdev; } ;
struct TYPE_2__ {int (* nmd_finalize ) (struct netmap_mem_d*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NETMAP_BUF_POOL ; 
 int /*<<< orphan*/  FUNC0 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC1 (struct netmap_mem_d*) ; 
 scalar_t__ FUNC2 (struct netmap_mem_d*) ; 
 int /*<<< orphan*/  FUNC3 (struct netmap_mem_d*,struct netmap_adapter*) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct netmap_adapter*) ; 
 scalar_t__ FUNC5 (struct netmap_mem_d*,scalar_t__) ; 
 int FUNC6 (struct netmap_mem_d*) ; 

int
FUNC7(struct netmap_mem_d *nmd, struct netmap_adapter *na)
{
	int lasterr = 0;
	if (FUNC5(nmd, na->pdev) < 0) {
		return ENOMEM;
	}

	FUNC0(nmd);

	if (FUNC2(nmd))
		goto out;

	nmd->active++;

	nmd->lasterr = nmd->ops->nmd_finalize(nmd);

	if (!nmd->lasterr && na->pdev) {
		nmd->lasterr = FUNC4(&nmd->pools[NETMAP_BUF_POOL], na);
	}

out:
	lasterr = nmd->lasterr;
	FUNC1(nmd);

	if (lasterr)
		FUNC3(nmd, na);

	return lasterr;
}
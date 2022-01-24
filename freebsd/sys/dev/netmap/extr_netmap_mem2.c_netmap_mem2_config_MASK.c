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
struct netmap_mem_d {int flags; int lasterr; TYPE_1__* params; int /*<<< orphan*/ * pools; } ;
struct TYPE_2__ {int /*<<< orphan*/  size; int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int NETMAP_MEM_FINALIZED ; 
 int NETMAP_POOLS_NR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct netmap_mem_d *nmd)
{
	int i;

	if (!FUNC1(nmd->params))
		goto out;

	FUNC3("reconfiguring");

	if (nmd->flags & NETMAP_MEM_FINALIZED) {
		/* reset previous allocation */
		for (i = 0; i < NETMAP_POOLS_NR; i++) {
			FUNC2(&nmd->pools[i]);
		}
		nmd->flags &= ~NETMAP_MEM_FINALIZED;
	}

	for (i = 0; i < NETMAP_POOLS_NR; i++) {
		nmd->lasterr = FUNC0(&nmd->pools[i],
				nmd->params[i].num, nmd->params[i].size);
		if (nmd->lasterr)
			goto out;
	}

out:

	return nmd->lasterr;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  sg_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  sp_sysctl; scalar_t__ sp_rcache; int /*<<< orphan*/  sp_lock; TYPE_2__* sp_groups; } ;
typedef  TYPE_1__ SVCPOOL ;
typedef  TYPE_2__ SVCGROUP ;

/* Variables and functions */
 int /*<<< orphan*/  M_RPC ; 
 int SVC_MAXGROUPS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(SVCPOOL *pool)
{
	SVCGROUP *grp;
	int g;

	FUNC3(pool);

	for (g = 0; g < SVC_MAXGROUPS; g++) {
		grp = &pool->sp_groups[g];
		FUNC1(&grp->sg_lock);
	}
	FUNC1(&pool->sp_lock);

	if (pool->sp_rcache)
		FUNC2(pool->sp_rcache);

	FUNC4(&pool->sp_sysctl);
	FUNC0(pool, M_RPC);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  sg_lock; int /*<<< orphan*/  sg_state; } ;
struct TYPE_5__ {TYPE_2__* sp_groups; int /*<<< orphan*/  sp_lock; int /*<<< orphan*/  sp_state; } ;
typedef  TYPE_1__ SVCPOOL ;
typedef  TYPE_2__ SVCGROUP ;

/* Variables and functions */
 int /*<<< orphan*/  SVCPOOL_ACTIVE ; 
 int /*<<< orphan*/  SVCPOOL_INIT ; 
 int SVC_MAXGROUPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3(SVCPOOL *pool)
{
	SVCGROUP *grp;
	int g;

	FUNC2(pool);

	/* Now, initialize the pool's state for a fresh svc_run() call. */
	FUNC0(&pool->sp_lock);
	pool->sp_state = SVCPOOL_INIT;
	FUNC1(&pool->sp_lock);
	for (g = 0; g < SVC_MAXGROUPS; g++) {
		grp = &pool->sp_groups[g];
		FUNC0(&grp->sg_lock);
		grp->sg_state = SVCPOOL_ACTIVE;
		FUNC1(&grp->sg_lock);
	}
}
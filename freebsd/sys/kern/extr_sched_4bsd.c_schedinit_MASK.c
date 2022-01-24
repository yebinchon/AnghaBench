#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ts_slice; } ;
struct TYPE_4__ {int /*<<< orphan*/ * td_lock; } ;

/* Variables and functions */
 int MTX_RECURSE ; 
 int MTX_SPIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sched_lock ; 
 int /*<<< orphan*/  sched_slice ; 
 TYPE_2__* FUNC1 (TYPE_1__*) ; 
 TYPE_1__ thread0 ; 

void
FUNC2(void)
{

	/*
	 * Set up the scheduler specific parts of thread0.
	 */
	thread0.td_lock = &sched_lock;
	FUNC1(&thread0)->ts_slice = sched_slice;
	FUNC0(&sched_lock, "sched lock", NULL, MTX_SPIN | MTX_RECURSE);
}
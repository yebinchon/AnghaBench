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
struct gtaskqueue {int dummy; } ;
struct gtask {int /*<<< orphan*/  ta_flags; } ;
struct grouptask {struct gtask gt_task; struct gtaskqueue* gt_taskqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_NOENQUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct gtaskqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct gtaskqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct gtask*) ; 
 int /*<<< orphan*/  FUNC3 (struct gtaskqueue*,struct gtask*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(struct grouptask *grouptask)
{
	struct gtaskqueue *queue = grouptask->gt_taskqueue;
	struct gtask *gtask = &grouptask->gt_task;

#ifdef INVARIANTS
	if (queue == NULL) {
		gtask_dump(gtask);
		panic("queue == NULL");
	}
#endif
	FUNC0(queue);
	gtask->ta_flags |= TASK_NOENQUEUE;
  	FUNC3(queue, gtask);
	FUNC1(queue);
}
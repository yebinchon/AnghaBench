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
typedef  scalar_t__ u_int ;
struct taskqueue {struct task* tq_hint; int /*<<< orphan*/  tq_queue; } ;
struct task {scalar_t__ ta_pending; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct task*,struct task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ta_link ; 
 scalar_t__ FUNC1 (struct taskqueue*,struct task*) ; 

__attribute__((used)) static int
FUNC2(struct taskqueue *queue, struct task *task,
    u_int *pendp)
{

	if (task->ta_pending > 0) {
		FUNC0(&queue->tq_queue, task, task, ta_link);
		if (queue->tq_hint == task)
			queue->tq_hint = NULL;
	}
	if (pendp != NULL)
		*pendp = task->ta_pending;
	task->ta_pending = 0;
	return (FUNC1(queue, task) ? EBUSY : 0);
}
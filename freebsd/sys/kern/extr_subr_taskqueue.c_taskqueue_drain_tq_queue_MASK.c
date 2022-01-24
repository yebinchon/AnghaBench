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
struct taskqueue {struct task* tq_hint; int /*<<< orphan*/  tq_queue; } ;
struct task {int ta_pending; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct task*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct task*) ; 
 int /*<<< orphan*/  FUNC3 (struct taskqueue*,struct task*,char*) ; 
 int /*<<< orphan*/  USHRT_MAX ; 
 int /*<<< orphan*/  ta_link ; 
 int /*<<< orphan*/  taskqueue_task_nop_fn ; 

__attribute__((used)) static int
FUNC4(struct taskqueue *queue)
{
	struct task t_barrier;

	if (FUNC0(&queue->tq_queue))
		return (0);

	/*
	 * Enqueue our barrier after all current tasks, but with
	 * the highest priority so that newly queued tasks cannot
	 * pass it.  Because of the high priority, we can not use
	 * taskqueue_enqueue_locked directly (which drops the lock
	 * anyway) so just insert it at tail while we have the
	 * queue lock.
	 */
	FUNC2(&t_barrier, USHRT_MAX, taskqueue_task_nop_fn, &t_barrier);
	FUNC1(&queue->tq_queue, &t_barrier, ta_link);
	queue->tq_hint = &t_barrier;
	t_barrier.ta_pending = 1;

	/*
	 * Once the barrier has executed, all previously queued tasks
	 * have completed or are currently executing.
	 */
	while (t_barrier.ta_pending != 0)
		FUNC3(queue, &t_barrier, "tq_qdrain");
	return (1);
}
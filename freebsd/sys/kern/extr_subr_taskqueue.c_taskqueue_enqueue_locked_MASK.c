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
struct taskqueue {int tq_flags; int /*<<< orphan*/  tq_context; int /*<<< orphan*/  (* tq_enqueue ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  tq_queue; struct task* tq_hint; } ;
struct task {int ta_pending; scalar_t__ ta_priority; int /*<<< orphan*/ * ta_func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct task* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct task*,struct task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct task*,int /*<<< orphan*/ ) ; 
 struct task* FUNC5 (int /*<<< orphan*/ *,struct task*,int /*<<< orphan*/ ) ; 
 struct task* FUNC6 (struct task*,int /*<<< orphan*/ ) ; 
 int TQ_FLAGS_BLOCKED ; 
 int TQ_FLAGS_UNLOCKED_ENQUEUE ; 
 int /*<<< orphan*/  FUNC7 (struct taskqueue*) ; 
 int USHRT_MAX ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ta_link ; 

__attribute__((used)) static int
FUNC9(struct taskqueue *queue, struct task *task)
{
	struct task *ins;
	struct task *prev;

	FUNC0(task->ta_func != NULL, ("enqueueing task with NULL func"));
	/*
	 * Count multiple enqueues.
	 */
	if (task->ta_pending) {
		if (task->ta_pending < USHRT_MAX)
			task->ta_pending++;
		FUNC7(queue);
		return (0);
	}

	/*
	 * Optimise cases when all tasks use small set of priorities.
	 * In case of only one priority we always insert at the end.
	 * In case of two tq_hint typically gives the insertion point.
	 * In case of more then two tq_hint should halve the search.
	 */
	prev = FUNC5(&queue->tq_queue, task, ta_link);
	if (!prev || prev->ta_priority >= task->ta_priority) {
		FUNC4(&queue->tq_queue, task, ta_link);
	} else {
		prev = queue->tq_hint;
		if (prev && prev->ta_priority >= task->ta_priority) {
			ins = FUNC6(prev, ta_link);
		} else {
			prev = NULL;
			ins = FUNC1(&queue->tq_queue);
		}
		for (; ins; prev = ins, ins = FUNC6(ins, ta_link))
			if (ins->ta_priority < task->ta_priority)
				break;

		if (prev) {
			FUNC2(&queue->tq_queue, prev, task, ta_link);
			queue->tq_hint = task;
		} else
			FUNC3(&queue->tq_queue, task, ta_link);
	}

	task->ta_pending = 1;
	if ((queue->tq_flags & TQ_FLAGS_UNLOCKED_ENQUEUE) != 0)
		FUNC7(queue);
	if ((queue->tq_flags & TQ_FLAGS_BLOCKED) == 0)
		queue->tq_enqueue(queue->tq_context);
	if ((queue->tq_flags & TQ_FLAGS_UNLOCKED_ENQUEUE) == 0)
		FUNC7(queue);

	/* Return with lock released. */
	return (0);
}
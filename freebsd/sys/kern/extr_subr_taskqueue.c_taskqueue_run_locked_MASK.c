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
struct taskqueue_busy {scalar_t__ tb_seq; struct task* tb_running; } ;
struct taskqueue {scalar_t__ tq_seq; struct task* tq_hint; int /*<<< orphan*/  tq_queue; int /*<<< orphan*/  tq_active; } ;
struct task {int ta_pending; int /*<<< orphan*/  ta_context; int /*<<< orphan*/  (* ta_func ) (int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct taskqueue_busy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct taskqueue_busy*,int /*<<< orphan*/ ) ; 
 struct task* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC6 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC7 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ta_link ; 
 int /*<<< orphan*/  tb_link ; 
 int /*<<< orphan*/  FUNC9 (struct task*) ; 

__attribute__((used)) static void
FUNC10(struct taskqueue *queue)
{
	struct taskqueue_busy tb;
	struct task *task;
	int pending;

	FUNC0(queue != NULL, ("tq is NULL"));
	FUNC5(queue);
	tb.tb_running = NULL;
	FUNC1(&queue->tq_active, &tb, tb_link);

	while ((task = FUNC3(&queue->tq_queue)) != NULL) {
		FUNC4(&queue->tq_queue, ta_link);
		if (queue->tq_hint == task)
			queue->tq_hint = NULL;
		pending = task->ta_pending;
		task->ta_pending = 0;
		tb.tb_running = task;
		tb.tb_seq = ++queue->tq_seq;
		FUNC7(queue);

		FUNC0(task->ta_func != NULL, ("task->ta_func is NULL"));
		task->ta_func(task->ta_context, pending);

		FUNC6(queue);
		FUNC9(task);
	}
	FUNC2(&tb, tb_link);
}
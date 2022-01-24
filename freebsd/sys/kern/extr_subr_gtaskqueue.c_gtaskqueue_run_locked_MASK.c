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
struct gtaskqueue_busy {scalar_t__ tb_seq; struct gtask* tb_running; } ;
struct gtaskqueue {scalar_t__ tq_seq; int /*<<< orphan*/  tq_queue; int /*<<< orphan*/  tq_active; } ;
struct gtask {int /*<<< orphan*/  ta_context; int /*<<< orphan*/  (* ta_func ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  ta_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct gtaskqueue_busy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gtaskqueue_busy*,int /*<<< orphan*/ ) ; 
 struct gtask* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_ENQUEUED ; 
 int /*<<< orphan*/  FUNC5 (struct gtaskqueue*) ; 
 int /*<<< orphan*/  FUNC6 (struct gtaskqueue*) ; 
 int /*<<< orphan*/  FUNC7 (struct gtaskqueue*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ta_link ; 
 int /*<<< orphan*/  tb_link ; 
 int /*<<< orphan*/  FUNC9 (struct gtask*) ; 

__attribute__((used)) static void
FUNC10(struct gtaskqueue *queue)
{
	struct gtaskqueue_busy tb;
	struct gtask *gtask;

	FUNC0(queue != NULL, ("tq is NULL"));
	FUNC5(queue);
	tb.tb_running = NULL;
	FUNC1(&queue->tq_active, &tb, tb_link);

	while ((gtask = FUNC3(&queue->tq_queue)) != NULL) {
		FUNC4(&queue->tq_queue, ta_link);
		gtask->ta_flags &= ~TASK_ENQUEUED;
		tb.tb_running = gtask;
		tb.tb_seq = ++queue->tq_seq;
		FUNC7(queue);

		FUNC0(gtask->ta_func != NULL, ("task->ta_func is NULL"));
		gtask->ta_func(gtask->ta_context);

		FUNC6(queue);
		FUNC9(gtask);
	}
	FUNC2(&tb, tb_link);
}
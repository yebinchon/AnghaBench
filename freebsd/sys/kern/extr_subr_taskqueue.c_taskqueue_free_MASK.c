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
struct taskqueue {scalar_t__ tq_callouts; struct taskqueue* tq_name; struct taskqueue* tq_threads; int /*<<< orphan*/  tq_mutex; int /*<<< orphan*/  tq_active; int /*<<< orphan*/  tq_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_TASKQUEUE ; 
 int /*<<< orphan*/  TQ_FLAGS_ACTIVE ; 
 int /*<<< orphan*/  FUNC2 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct taskqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct taskqueue*,struct taskqueue*) ; 

void
FUNC6(struct taskqueue *queue)
{

	FUNC2(queue);
	queue->tq_flags &= ~TQ_FLAGS_ACTIVE;
	FUNC5(queue->tq_threads, queue);
	FUNC0(FUNC1(&queue->tq_active), ("Tasks still running?"));
	FUNC0(queue->tq_callouts == 0, ("Armed timeout tasks"));
	FUNC4(&queue->tq_mutex);
	FUNC3(queue->tq_threads, M_TASKQUEUE);
	FUNC3(queue->tq_name, M_TASKQUEUE);
	FUNC3(queue, M_TASKQUEUE);
}
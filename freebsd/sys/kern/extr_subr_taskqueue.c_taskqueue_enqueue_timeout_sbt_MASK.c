#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ta_pending; } ;
struct timeout_task {int f; int /*<<< orphan*/  c; TYPE_1__ t; struct taskqueue* q; } ;
struct taskqueue {int /*<<< orphan*/  tq_callouts; int /*<<< orphan*/  tq_spin; } ;
typedef  int /*<<< orphan*/  sbintime_t ;

/* Variables and functions */
 int DT_CALLOUT_ARMED ; 
 int DT_DRAIN_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeout_task*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct taskqueue*,TYPE_1__*) ; 
 int /*<<< orphan*/  taskqueue_timeout_func ; 

int
FUNC5(struct taskqueue *queue,
    struct timeout_task *timeout_task, sbintime_t sbt, sbintime_t pr, int flags)
{
	int res;

	FUNC1(queue);
	FUNC0(timeout_task->q == NULL || timeout_task->q == queue,
	    ("Migrated queue"));
	FUNC0(!queue->tq_spin, ("Timeout for spin-queue"));
	timeout_task->q = queue;
	res = timeout_task->t.ta_pending;
	if (timeout_task->f & DT_DRAIN_IN_PROGRESS) {
		/* Do nothing */
		FUNC2(queue);
		res = -1;
	} else if (sbt == 0) {
		FUNC4(queue, &timeout_task->t);
		/* The lock is released inside. */
	} else {
		if ((timeout_task->f & DT_CALLOUT_ARMED) != 0) {
			res++;
		} else {
			queue->tq_callouts++;
			timeout_task->f |= DT_CALLOUT_ARMED;
			if (sbt < 0)
				sbt = -sbt; /* Ignore overflow. */
		}
		if (sbt > 0) {
			FUNC3(&timeout_task->c, sbt, pr,
			    taskqueue_timeout_func, timeout_task, flags);
		}
		FUNC2(queue);
	}
	return (res);
}
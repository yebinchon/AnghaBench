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
typedef  int /*<<< orphan*/  task_fn_t ;
struct timeout_task {scalar_t__ f; struct taskqueue* q; int /*<<< orphan*/  c; int /*<<< orphan*/  t; } ;
struct taskqueue {int /*<<< orphan*/  tq_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  CALLOUT_RETURNUNLOCKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(struct taskqueue *queue, struct timeout_task *timeout_task,
    int priority, task_fn_t func, void *context)
{

	FUNC0(&timeout_task->t, priority, func, context);
	FUNC1(&timeout_task->c, &queue->tq_mutex,
	    CALLOUT_RETURNUNLOCKED);
	timeout_task->q = queue;
	timeout_task->f = 0;
}
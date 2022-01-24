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
typedef  int u_int ;
struct timeout_task {int f; int /*<<< orphan*/  t; int /*<<< orphan*/  c; } ;
struct taskqueue {int /*<<< orphan*/  tq_callouts; } ;

/* Variables and functions */
 int DT_CALLOUT_ARMED ; 
 int /*<<< orphan*/  FUNC0 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct taskqueue*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct taskqueue*,int /*<<< orphan*/ *,int*) ; 

int
FUNC4(struct taskqueue *queue,
    struct timeout_task *timeout_task, u_int *pendp)
{
	u_int pending, pending1;
	int error;

	FUNC0(queue);
	pending = !!(FUNC2(&timeout_task->c) > 0);
	error = FUNC3(queue, &timeout_task->t, &pending1);
	if ((timeout_task->f & DT_CALLOUT_ARMED) != 0) {
		timeout_task->f &= ~DT_CALLOUT_ARMED;
		queue->tq_callouts--;
	}
	FUNC1(queue);

	if (pendp != NULL)
		*pendp = pending + pending1;
	return (error);
}
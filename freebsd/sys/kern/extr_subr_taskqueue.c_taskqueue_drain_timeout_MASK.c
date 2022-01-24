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
struct timeout_task {int f; int /*<<< orphan*/  t; int /*<<< orphan*/  c; } ;
struct taskqueue {int dummy; } ;

/* Variables and functions */
 int DT_DRAIN_IN_PROGRESS ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct taskqueue*,int /*<<< orphan*/ *) ; 

void
FUNC5(struct taskqueue *queue,
    struct timeout_task *timeout_task)
{

	/*
	 * Set flag to prevent timer from re-starting during drain:
	 */
	FUNC1(queue);
	FUNC0((timeout_task->f & DT_DRAIN_IN_PROGRESS) == 0,
	    ("Drain already in progress"));
	timeout_task->f |= DT_DRAIN_IN_PROGRESS;
	FUNC2(queue);

	FUNC3(&timeout_task->c);
	FUNC4(queue, &timeout_task->t);

	/*
	 * Clear flag to allow timer to re-start:
	 */
	FUNC1(queue);
	timeout_task->f &= ~DT_DRAIN_IN_PROGRESS;
	FUNC2(queue);
}
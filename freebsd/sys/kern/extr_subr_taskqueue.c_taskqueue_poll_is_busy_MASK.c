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
struct taskqueue {int dummy; } ;
struct task {scalar_t__ ta_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct taskqueue*) ; 
 scalar_t__ FUNC2 (struct taskqueue*,struct task*) ; 

int
FUNC3(struct taskqueue *queue, struct task *task)
{
	int retval;

	FUNC0(queue);
	retval = task->ta_pending > 0 || FUNC2(queue, task);
	FUNC1(queue);

	return (retval);
}
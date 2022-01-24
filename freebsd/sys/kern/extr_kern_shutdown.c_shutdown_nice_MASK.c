#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {void* ta_context; } ;

/* Variables and functions */
 int RB_NOSYNC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * initproc ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__ shutdown_nice_task ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  taskqueue_fast ; 

void
FUNC3(int howto)
{

	if (initproc != NULL && !FUNC0()) {
		shutdown_nice_task.ta_context = (void *)(uintptr_t)howto;
		FUNC2(taskqueue_fast, &shutdown_nice_task);
	} else {
		/*
		 * No init(8) running, or scheduler would not allow it
		 * to run, so simply reboot.
		 */
		FUNC1(howto | RB_NOSYNC);
	}
}
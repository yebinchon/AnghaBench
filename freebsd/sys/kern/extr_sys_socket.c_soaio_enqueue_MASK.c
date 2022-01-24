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
struct task {scalar_t__ ta_pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ soaio_idle ; 
 int /*<<< orphan*/  soaio_jobs ; 
 int /*<<< orphan*/  soaio_jobs_lock ; 
 int /*<<< orphan*/  soaio_kproc_task ; 
 scalar_t__ soaio_max_procs ; 
 scalar_t__ soaio_num_procs ; 
 scalar_t__ soaio_queued ; 
 int /*<<< orphan*/  ta_link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 

void
FUNC6(struct task *task)
{

	FUNC2(&soaio_jobs_lock);
	FUNC0(task->ta_pending == 0);
	task->ta_pending++;
	FUNC1(&soaio_jobs, task, ta_link);
	soaio_queued++;
	if (soaio_queued <= soaio_idle)
		FUNC5(&soaio_idle);
	else if (soaio_num_procs < soaio_max_procs)
		FUNC4(taskqueue_thread, &soaio_kproc_task);
	FUNC3(&soaio_jobs_lock);
}
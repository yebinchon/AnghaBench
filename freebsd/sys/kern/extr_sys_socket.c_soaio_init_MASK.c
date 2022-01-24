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

/* Variables and functions */
 int /*<<< orphan*/  AIOD_LIFETIME_DEFAULT ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  soaio_jobs ; 
 int /*<<< orphan*/  soaio_jobs_lock ; 
 int /*<<< orphan*/  soaio_kproc_create ; 
 int /*<<< orphan*/  soaio_kproc_task ; 
 int /*<<< orphan*/  soaio_kproc_unr ; 
 int /*<<< orphan*/  soaio_lifetime ; 
 scalar_t__ soaio_target_procs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC5(void)
{

	soaio_lifetime = AIOD_LIFETIME_DEFAULT;
	FUNC0(&soaio_jobs);
	FUNC2(&soaio_jobs_lock, "soaio jobs", NULL, MTX_DEF);
	soaio_kproc_unr = FUNC3(1, INT_MAX, NULL);
	FUNC1(&soaio_kproc_task, 0, soaio_kproc_create, NULL);
	if (soaio_target_procs > 0)
		FUNC4(taskqueue_thread, &soaio_kproc_task);
}
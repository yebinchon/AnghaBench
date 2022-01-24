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
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RFNOWAIT ; 
 int /*<<< orphan*/  aio_daemon ; 
 int /*<<< orphan*/  aio_job_mtx ; 
 int /*<<< orphan*/  aio_newproc_sem ; 
 int /*<<< orphan*/  aiod_unr ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,void*,struct proc**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  num_aio_procs ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(int *start)
{
	int error;
	struct proc *p;
	int id;

	id = FUNC0(aiod_unr);
	error = FUNC2(aio_daemon, (void *)(intptr_t)id, &p,
		RFNOWAIT, 0, "aiod%d", id);
	if (error == 0) {
		/*
		 * Wait until daemon is started.
		 */
		FUNC5(&aio_newproc_sem);
		FUNC3(&aio_job_mtx);
		num_aio_procs++;
		if (start != NULL)
			(*start)--;
		FUNC4(&aio_job_mtx);
	} else {
		FUNC1(aiod_unr, id);
	}
	return (error);
}
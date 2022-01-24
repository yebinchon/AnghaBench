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
struct kaiocb {int /*<<< orphan*/  userproc; int /*<<< orphan*/ * handle_fn; } ;
typedef  int /*<<< orphan*/  aio_handle_fn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct kaiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kaiocb*) ; 
 int /*<<< orphan*/  aio_cancel_daemon_job ; 
 int /*<<< orphan*/  aio_job_mtx ; 
 int /*<<< orphan*/  aio_jobs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kaiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(struct kaiocb *job, aio_handle_fn_t *func)
{

	FUNC4(&aio_job_mtx);
	if (!FUNC3(job, aio_cancel_daemon_job)) {
		FUNC5(&aio_job_mtx);
		FUNC1(job);
		return;
	}
	job->handle_fn = func;
	FUNC0(&aio_jobs, job, list);
	FUNC2(job->userproc);
	FUNC5(&aio_job_mtx);
}
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
struct vmspace {int dummy; } ;
struct task {int ta_pending; int /*<<< orphan*/  ta_context; int /*<<< orphan*/  (* ta_func ) (int /*<<< orphan*/ ,int) ;} ;
struct proc {struct vmspace* p_vmspace; } ;

/* Variables and functions */
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct task* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct proc* curproc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  soaio_idle ; 
 int /*<<< orphan*/  soaio_jobs ; 
 int /*<<< orphan*/  soaio_jobs_lock ; 
 int /*<<< orphan*/  soaio_kproc_unr ; 
 int /*<<< orphan*/  soaio_lifetime ; 
 scalar_t__ soaio_num_procs ; 
 scalar_t__ soaio_queued ; 
 scalar_t__ soaio_starting ; 
 scalar_t__ soaio_target_procs ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ta_link ; 
 struct vmspace* FUNC10 (struct proc*) ; 
 int /*<<< orphan*/  FUNC11 (struct vmspace*) ; 

__attribute__((used)) static void
FUNC12(void *arg)
{
	struct proc *p;
	struct vmspace *myvm;
	struct task *task;
	int error, id, pending;

	id = (intptr_t)arg;

	/*
	 * Grab an extra reference on the daemon's vmspace so that it
	 * doesn't get freed by jobs that switch to a different
	 * vmspace.
	 */
	p = curproc;
	myvm = FUNC10(p);

	FUNC6(&soaio_jobs_lock);
	FUNC0(soaio_starting > 0);
	soaio_starting--;
	for (;;) {
		while (!FUNC1(&soaio_jobs)) {
			task = FUNC2(&soaio_jobs);
			FUNC3(&soaio_jobs, ta_link);
			soaio_queued--;
			pending = task->ta_pending;
			task->ta_pending = 0;
			FUNC8(&soaio_jobs_lock);

			task->ta_func(task->ta_context, pending);

			FUNC6(&soaio_jobs_lock);
		}
		FUNC0(soaio_queued == 0);

		if (p->p_vmspace != myvm) {
			FUNC8(&soaio_jobs_lock);
			FUNC11(myvm);
			FUNC6(&soaio_jobs_lock);
			continue;
		}

		soaio_idle++;
		error = FUNC7(&soaio_idle, &soaio_jobs_lock, 0, "-",
		    soaio_lifetime);
		soaio_idle--;
		if (error == EWOULDBLOCK && FUNC1(&soaio_jobs) &&
		    soaio_num_procs > soaio_target_procs)
			break;
	}
	soaio_num_procs--;
	FUNC8(&soaio_jobs_lock);
	FUNC4(soaio_kproc_unr, id);
	FUNC5(0);
}
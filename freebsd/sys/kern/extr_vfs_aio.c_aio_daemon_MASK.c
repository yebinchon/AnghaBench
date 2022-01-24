#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmspace {int vm_refcnt; } ;
struct thread {struct proc* td_proc; } ;
struct proc {struct vmspace* p_vmspace; int /*<<< orphan*/ * p_textvp; } ;
struct kaioinfo {int /*<<< orphan*/  kaio_active_count; } ;
struct kaiocb {int /*<<< orphan*/  (* handle_fn ) (struct kaiocb*) ;TYPE_1__* userproc; } ;
struct aioproc {int aioprocflags; struct proc* aioproc; } ;
struct TYPE_2__ {struct kaioinfo* p_aioinfo; } ;

/* Variables and functions */
 int AIOP_FREE ; 
 scalar_t__ EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PRIBIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct aioproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct aioproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aio_freeproc ; 
 int /*<<< orphan*/  aio_job_mtx ; 
 int /*<<< orphan*/  aio_jobs ; 
 int /*<<< orphan*/  aio_newproc_sem ; 
 struct kaiocb* FUNC4 (struct aioproc*) ; 
 int /*<<< orphan*/  aiod_lifetime ; 
 int /*<<< orphan*/  aiod_unr ; 
 int /*<<< orphan*/  aiop_zone ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  list ; 
 scalar_t__ FUNC7 (struct proc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ num_aio_procs ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct kaiocb*) ; 
 scalar_t__ target_aio_procs ; 
 struct aioproc* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct aioproc*) ; 
 struct vmspace* FUNC15 (struct proc*) ; 
 int /*<<< orphan*/  FUNC16 (struct vmspace*) ; 
 int /*<<< orphan*/  FUNC17 (struct vmspace*) ; 

__attribute__((used)) static void
FUNC18(void *_id)
{
	struct kaiocb *job;
	struct aioproc *aiop;
	struct kaioinfo *ki;
	struct proc *p;
	struct vmspace *myvm;
	struct thread *td = curthread;
	int id = (intptr_t)_id;

	/*
	 * Grab an extra reference on the daemon's vmspace so that it
	 * doesn't get freed by jobs that switch to a different
	 * vmspace.
	 */
	p = td->td_proc;
	myvm = FUNC15(p);

	FUNC0(p->p_textvp == NULL, ("kthread has a textvp"));

	/*
	 * Allocate and ready the aio control info.  There is one aiop structure
	 * per daemon.
	 */
	aiop = FUNC13(aiop_zone, M_WAITOK);
	aiop->aioproc = p;
	aiop->aioprocflags = 0;

	/*
	 * Wakeup parent process.  (Parent sleeps to keep from blasting away
	 * and creating too many daemons.)
	 */
	FUNC11(&aio_newproc_sem);

	FUNC9(&aio_job_mtx);
	for (;;) {
		/*
		 * Take daemon off of free queue
		 */
		if (aiop->aioprocflags & AIOP_FREE) {
			FUNC3(&aio_freeproc, aiop, list);
			aiop->aioprocflags &= ~AIOP_FREE;
		}

		/*
		 * Check for jobs.
		 */
		while ((job = FUNC4(aiop)) != NULL) {
			FUNC10(&aio_job_mtx);

			ki = job->userproc->p_aioinfo;
			job->handle_fn(job);

			FUNC9(&aio_job_mtx);
			/* Decrement the active job count. */
			ki->kaio_active_count--;
		}

		/*
		 * Disconnect from user address space.
		 */
		if (p->p_vmspace != myvm) {
			FUNC10(&aio_job_mtx);
			FUNC17(myvm);
			FUNC9(&aio_job_mtx);
			/*
			 * We have to restart to avoid race, we only sleep if
			 * no job can be selected.
			 */
			continue;
		}

		FUNC8(&aio_job_mtx, MA_OWNED);

		FUNC2(&aio_freeproc, aiop, list);
		aiop->aioprocflags |= AIOP_FREE;

		/*
		 * If daemon is inactive for a long time, allow it to exit,
		 * thereby freeing resources.
		 */
		if (FUNC7(p, &aio_job_mtx, PRIBIO, "aiordy",
		    aiod_lifetime) == EWOULDBLOCK && FUNC1(&aio_jobs) &&
		    (aiop->aioprocflags & AIOP_FREE) &&
		    num_aio_procs > target_aio_procs)
			break;
	}
	FUNC3(&aio_freeproc, aiop, list);
	num_aio_procs--;
	FUNC10(&aio_job_mtx);
	FUNC14(aiop_zone, aiop);
	FUNC5(aiod_unr, id);
	FUNC16(myvm);

	FUNC0(p->p_vmspace == myvm,
	    ("AIOD: bad vmspace for exiting daemon"));
	FUNC0(myvm->vm_refcnt > 1,
	    ("AIOD: bad vm refcnt for exiting daemon: %d", myvm->vm_refcnt));
	FUNC6(0);
}
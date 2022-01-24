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
struct proc {struct kaioinfo* p_aioinfo; } ;
struct kaioinfo {scalar_t__ kaio_count; int /*<<< orphan*/  kaio_liojoblist; int /*<<< orphan*/  kaio_all; int /*<<< orphan*/  kaio_done; } ;
struct kaiocb {int jobflags; scalar_t__ lioj_count; int /*<<< orphan*/  cred; scalar_t__ fd_file; int /*<<< orphan*/  ksi; int /*<<< orphan*/  klist; int /*<<< orphan*/  lioj_ksi; int /*<<< orphan*/  lioj_finished_count; struct kaiocb* lio; struct proc* userproc; } ;
struct aioliojob {int jobflags; scalar_t__ lioj_count; int /*<<< orphan*/  cred; scalar_t__ fd_file; int /*<<< orphan*/  ksi; int /*<<< orphan*/  klist; int /*<<< orphan*/  lioj_ksi; int /*<<< orphan*/  lioj_finished_count; struct aioliojob* lio; struct proc* userproc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kaioinfo*) ; 
 int /*<<< orphan*/  FUNC1 (struct kaioinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kaioinfo*) ; 
 int KAIOCB_FINISHED ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct kaiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  aiocb_zone ; 
 int /*<<< orphan*/  aiolio_zone ; 
 int /*<<< orphan*/  allist ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct proc* curproc ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  lioj_list ; 
 int /*<<< orphan*/  num_queue_count ; 
 int /*<<< orphan*/  plist ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct kaiocb*) ; 

__attribute__((used)) static int
FUNC13(struct kaiocb *job)
{
	struct kaioinfo *ki;
	struct aioliojob *lj;
	struct proc *p;

	p = job->userproc;
	FUNC3(curproc == p);
	ki = p->p_aioinfo;
	FUNC3(ki != NULL);

	FUNC1(ki, MA_OWNED);
	FUNC3(job->jobflags & KAIOCB_FINISHED);

	FUNC7(&num_queue_count, 1);

	ki->kaio_count--;
	FUNC3(ki->kaio_count >= 0);

	FUNC6(&ki->kaio_done, job, plist);
	FUNC6(&ki->kaio_all, job, allist);

	lj = job->lio;
	if (lj) {
		lj->lioj_count--;
		lj->lioj_finished_count--;

		if (lj->lioj_count == 0) {
			FUNC6(&ki->kaio_liojoblist, lj, lioj_list);
			/* lio is going away, we need to destroy any knotes */
			FUNC10(&lj->klist, curthread, 1);
			FUNC4(p);
			FUNC11(&lj->lioj_ksi);
			FUNC5(p);
			FUNC12(aiolio_zone, lj);
		}
	}

	/* job is going away, we need to destroy any knotes */
	FUNC10(&job->klist, curthread, 1);
	FUNC4(p);
	FUNC11(&job->ksi);
	FUNC5(p);

	FUNC2(ki);

	/*
	 * The thread argument here is used to find the owning process
	 * and is also passed to fo_close() which may pass it to various
	 * places such as devsw close() routines.  Because of that, we
	 * need a thread pointer from the process owning the job that is
	 * persistent and won't disappear out from under us or move to
	 * another process.
	 *
	 * Currently, all the callers of this function call it to remove
	 * a kaiocb from the current process' job list either via a
	 * syscall or due to the current process calling exit() or
	 * execve().  Thus, we know that p == curproc.  We also know that
	 * curthread can't exit since we are curthread.
	 *
	 * Therefore, we use curthread as the thread to pass to
	 * knlist_delete().  This does mean that it is possible for the
	 * thread pointer at close time to differ from the thread pointer
	 * at open time, but this is already true of file descriptors in
	 * a multithreaded process.
	 */
	if (job->fd_file)
		FUNC9(job->fd_file, curthread);
	FUNC8(job->cred);
	FUNC12(aiocb_zone, job);
	FUNC0(ki);

	return (0);
}
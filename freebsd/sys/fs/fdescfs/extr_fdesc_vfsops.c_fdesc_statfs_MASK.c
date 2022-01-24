#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct thread {TYPE_2__* td_proc; } ;
struct statfs {int f_blocks; int f_files; int f_ffree; scalar_t__ f_bavail; scalar_t__ f_bfree; void* f_iosize; void* f_bsize; scalar_t__ f_flags; } ;
struct mount {int dummy; } ;
struct filedesc {int fd_nfiles; int fd_freefile; TYPE_1__* fd_ofiles; } ;
struct TYPE_4__ {struct filedesc* p_fd; } ;
struct TYPE_3__ {int /*<<< orphan*/ * fde_file; } ;

/* Variables and functions */
 void* DEV_BSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  RACCT_NOFILE ; 
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 struct thread* curthread ; 
 int FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct mount *mp, struct statfs *sbp)
{
	struct thread *td;
	struct filedesc *fdp;
	int lim;
	int i;
	int last;
	int freefd;
	uint64_t limit;

	td = curthread;

	/*
	 * Compute number of free file descriptors.
	 * [ Strange results will ensue if the open file
	 * limit is ever reduced below the current number
	 * of open files... ]
	 */
	lim = FUNC2(td, RLIMIT_NOFILE);
	fdp = td->td_proc->p_fd;
	FUNC0(fdp);
	limit = FUNC4(td->td_proc, RACCT_NOFILE);
	if (lim > limit)
		lim = limit;
	last = FUNC3(fdp->fd_nfiles, lim);
	freefd = 0;
	for (i = fdp->fd_freefile; i < last; i++)
		if (fdp->fd_ofiles[i].fde_file == NULL)
			freefd++;

	/*
	 * Adjust for the fact that the fdesc array may not
	 * have been fully allocated yet.
	 */
	if (fdp->fd_nfiles < lim)
		freefd += (lim - fdp->fd_nfiles);
	FUNC1(fdp);

	sbp->f_flags = 0;
	sbp->f_bsize = DEV_BSIZE;
	sbp->f_iosize = DEV_BSIZE;
	sbp->f_blocks = 2;		/* 1K to keep df happy */
	sbp->f_bfree = 0;
	sbp->f_bavail = 0;
	sbp->f_files = lim + 1;		/* Allow for "." */
	sbp->f_ffree = freefd;		/* See comments above */
	return (0);
}
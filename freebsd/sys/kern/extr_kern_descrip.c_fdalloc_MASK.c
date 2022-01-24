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
struct thread {struct proc* td_proc; } ;
struct proc {struct filedesc* p_fd; } ;
struct filedesc {int fd_freefile; int fd_nfiles; TYPE_1__* fd_ofiles; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fde_file; } ;

/* Variables and functions */
 int EMFILE ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  RACCT_NOFILE ; 
 int FUNC3 (struct filedesc*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct filedesc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct filedesc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct filedesc*,int) ; 
 int FUNC7 (struct thread*) ; 
 int FUNC8 (int,int) ; 
 int FUNC9 (struct proc*,int /*<<< orphan*/ ,int) ; 

int
FUNC10(struct thread *td, int minfd, int *result)
{
	struct proc *p = td->td_proc;
	struct filedesc *fdp = p->p_fd;
	int fd, maxfd, allocfd;
#ifdef RACCT
	int error;
#endif

	FUNC0(fdp);

	if (fdp->fd_freefile > minfd)
		minfd = fdp->fd_freefile;

	maxfd = FUNC7(td);

	/*
	 * Search the bitmap for a free descriptor starting at minfd.
	 * If none is found, grow the file table.
	 */
	fd = FUNC3(fdp, minfd, fdp->fd_nfiles);
	if (fd >= maxfd)
		return (EMFILE);
	if (fd >= fdp->fd_nfiles) {
		allocfd = FUNC8(fd * 2, maxfd);
#ifdef RACCT
		if (RACCT_ENABLED()) {
			error = racct_set_unlocked(p, RACCT_NOFILE, allocfd);
			if (error != 0)
				return (EMFILE);
		}
#endif
		/*
		 * fd is already equal to first free descriptor >= minfd, so
		 * we only need to grow the table and we are done.
		 */
		FUNC4(fdp, allocfd);
	}

	/*
	 * Perform some sanity checks, then mark the file descriptor as
	 * used and return it to the caller.
	 */
	FUNC1(fd >= 0 && fd < FUNC8(maxfd, fdp->fd_nfiles),
	    ("invalid descriptor %d", fd));
	FUNC1(!FUNC5(fdp, fd),
	    ("fd_first_free() returned non-free descriptor"));
	FUNC1(fdp->fd_ofiles[fd].fde_file == NULL,
	    ("file descriptor isn't free"));
	FUNC6(fdp, fd);
	*result = fd;
	return (0);
}
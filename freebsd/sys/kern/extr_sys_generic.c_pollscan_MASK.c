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
typedef  int u_int ;
struct thread {int* td_retval; int /*<<< orphan*/  td_ucred; TYPE_1__* td_proc; } ;
struct pollfd {size_t fd; int revents; int /*<<< orphan*/  events; } ;
struct filedesc {size_t fd_lastfile; TYPE_2__* fd_ofiles; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct file* fde_file; } ;
struct TYPE_3__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int POLLHUP ; 
 void* POLLNVAL ; 
 int POLLOUT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cap_event_rights ; 
 int /*<<< orphan*/  FUNC3 (struct filedesc*,size_t) ; 
 int FUNC4 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,struct pollfd*) ; 

__attribute__((used)) static int
FUNC6(struct thread *td, struct pollfd *fds, u_int nfd)
{
	struct filedesc *fdp = td->td_proc->p_fd;
	struct file *fp;
	int i, n = 0;

	FUNC0(fdp);
	for (i = 0; i < nfd; i++, fds++) {
		if (fds->fd > fdp->fd_lastfile) {
			fds->revents = POLLNVAL;
			n++;
		} else if (fds->fd < 0) {
			fds->revents = 0;
		} else {
			fp = fdp->fd_ofiles[fds->fd].fde_file;
#ifdef CAPABILITIES
			if (fp == NULL ||
			    cap_check(cap_rights(fdp, fds->fd), &cap_event_rights) != 0)
#else
			if (fp == NULL)
#endif
			{
				fds->revents = POLLNVAL;
				n++;
			} else {
				/*
				 * Note: backend also returns POLLHUP and
				 * POLLERR if appropriate.
				 */
				FUNC5(td, fds);
				fds->revents = FUNC4(fp, fds->events,
				    td->td_ucred, td);
				/*
				 * POSIX requires POLLOUT to be never
				 * set simultaneously with POLLHUP.
				 */
				if ((fds->revents & POLLHUP) != 0)
					fds->revents &= ~POLLOUT;

				if (fds->revents != 0)
					n++;
			}
		}
	}
	FUNC1(fdp);
	td->td_retval[0] = n;
	return (0);
}
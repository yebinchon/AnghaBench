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
struct thread {TYPE_2__* td_proc; } ;
struct filedesc {int fd_lastfile; TYPE_1__* fd_ofiles; } ;
struct closefrom_args {int lowfd; } ;
struct TYPE_4__ {struct filedesc* p_fd; } ;
struct TYPE_3__ {int /*<<< orphan*/ * fde_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC2 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int) ; 

int
FUNC4(struct thread *td, struct closefrom_args *uap)
{
	struct filedesc *fdp;
	int fd;

	fdp = td->td_proc->p_fd;
	FUNC0(uap->lowfd);

	/*
	 * Treat negative starting file descriptor values identical to
	 * closefrom(0) which closes all files.
	 */
	if (uap->lowfd < 0)
		uap->lowfd = 0;
	FUNC1(fdp);
	for (fd = uap->lowfd; fd <= fdp->fd_lastfile; fd++) {
		if (fdp->fd_ofiles[fd].fde_file != NULL) {
			FUNC2(fdp);
			(void)FUNC3(td, fd);
			FUNC1(fdp);
		}
	}
	FUNC2(fdp);
	return (0);
}
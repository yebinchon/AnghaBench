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
struct filedesc {int fd_refcnt; int fd_nfiles; TYPE_1__* fd_ofiles; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct filedesc* p_fd; } ;
struct TYPE_3__ {struct file* fde_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct filedesc*,int) ; 
 scalar_t__ FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*,int) ; 

void
FUNC8(struct thread *td)
{
	struct filedesc *fdp;
	struct file *fp;
	int i;

	fdp = td->td_proc->p_fd;
	FUNC2(fdp->fd_refcnt == 1, ("the fdtable should not be shared"));
	FUNC3(fdp->fd_nfiles >= 3);
	for (i = 0; i <= 2; i++) {
		fp = fdp->fd_ofiles[i].fde_file;
		if (fp != NULL && FUNC6(fp)) {
			FUNC0(fdp);
			FUNC7(td, i);
			/*
			 * NULL-out descriptor prior to close to avoid
			 * a race while close blocks.
			 */
			FUNC5(fdp, i);
			FUNC1(fdp);
			(void) FUNC4(fp, td);
		}
	}
}
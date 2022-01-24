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
struct thread {TYPE_1__* td_proc; } ;
struct filedescent {int fde_flags; struct file* fde_file; } ;
struct filedesc {int fd_refcnt; int fd_lastfile; struct filedescent* fd_ofiles; } ;
struct file {scalar_t__ f_type; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 scalar_t__ DTYPE_MQUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int UF_EXCLOSE ; 
 int /*<<< orphan*/  FUNC3 (struct filedesc*,int,struct file*,struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct filedesc*,int) ; 

void
FUNC5(struct thread *td)
{
	struct filedesc *fdp;
	struct filedescent *fde;
	struct file *fp;
	int i;

	fdp = td->td_proc->p_fd;
	FUNC2(fdp->fd_refcnt == 1, ("the fdtable should not be shared"));
	for (i = 0; i <= fdp->fd_lastfile; i++) {
		fde = &fdp->fd_ofiles[i];
		fp = fde->fde_file;
		if (fp != NULL && (fp->f_type == DTYPE_MQUEUE ||
		    (fde->fde_flags & UF_EXCLOSE))) {
			FUNC1(fdp);
			FUNC4(fdp, i);
			(void) FUNC3(fdp, i, fp, td, 0);
			FUNC0(fdp);
		}
	}
}
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
struct thread {TYPE_1__* td_proc; } ;
struct filedesc {TYPE_2__* fd_ofiles; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct file* fde_file; } ;
struct TYPE_3__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC2 (struct filedesc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct file*,struct thread*) ; 

void
FUNC4(struct thread *td, struct file *fp, int idx)
{
	struct filedesc *fdp = td->td_proc->p_fd;

	FUNC0(fdp);
	if (fdp->fd_ofiles[idx].fde_file == fp) {
		FUNC2(fdp, idx);
		FUNC1(fdp);
		FUNC3(fp, td);
	} else
		FUNC1(fdp);
}
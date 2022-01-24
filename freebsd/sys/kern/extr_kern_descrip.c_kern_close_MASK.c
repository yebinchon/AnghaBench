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
struct filedesc {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*,int) ; 
 int EBADF ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC2 (struct filedesc*) ; 
 int FUNC3 (struct filedesc*,int,struct file*,struct thread*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct filedesc*,int) ; 
 struct file* FUNC5 (struct filedesc*,int) ; 

int
FUNC6(struct thread *td, int fd)
{
	struct filedesc *fdp;
	struct file *fp;

	fdp = td->td_proc->p_fd;

	FUNC0(td, fd);

	FUNC1(fdp);
	if ((fp = FUNC5(fdp, fd)) == NULL) {
		FUNC2(fdp);
		return (EBADF);
	}
	FUNC4(fdp, fd);

	/* closefp() drops the FILEDESC lock for us. */
	return (FUNC3(fdp, fd, fp, td, 1));
}
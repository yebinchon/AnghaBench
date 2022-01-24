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
struct filecaps {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct filedesc* p_fd; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct filedesc*,struct file*,int,int,struct filecaps*) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 

int
FUNC7(struct thread *td, struct file *fp, int *fd, int flags,
    struct filecaps *fcaps)
{
	struct filedesc *fdp = td->td_proc->p_fd;
	int error;

	FUNC2(fd != NULL);

	if (!FUNC6(fp))
		return (EBADF);
	FUNC0(fdp);
	if ((error = FUNC4(td, 0, fd))) {
		FUNC1(fdp);
		FUNC5(fp, td);
		return (error);
	}
	FUNC3(fdp, fp, *fd, flags, fcaps);
	FUNC1(fdp);
	return (0);
}
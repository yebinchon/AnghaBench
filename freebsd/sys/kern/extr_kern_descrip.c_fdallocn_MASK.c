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
struct thread {struct proc* td_proc; } ;
struct proc {struct filedesc* p_fd; } ;
struct filedesc {int dummy; } ;

/* Variables and functions */
 int EMFILE ; 
 int /*<<< orphan*/  FUNC0 (struct filedesc*) ; 
 scalar_t__ FUNC1 (struct thread*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct filedesc*,int) ; 

int
FUNC3(struct thread *td, int minfd, int *fds, int n)
{
	struct proc *p = td->td_proc;
	struct filedesc *fdp = p->p_fd;
	int i;

	FUNC0(fdp);

	for (i = 0; i < n; i++)
		if (FUNC1(td, 0, &fds[i]) != 0)
			break;

	if (i < n) {
		for (i--; i >= 0; i--)
			FUNC2(fdp, fds[i]);
		return (EMFILE);
	}

	return (0);
}
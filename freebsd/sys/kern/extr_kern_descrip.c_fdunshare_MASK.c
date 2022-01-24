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
struct filedesc {int fd_refcnt; } ;

/* Variables and functions */
 struct filedesc* FUNC0 (struct filedesc*) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 

void
FUNC2(struct thread *td)
{
	struct filedesc *tmp;
	struct proc *p = td->td_proc;

	if (p->p_fd->fd_refcnt == 1)
		return;

	tmp = FUNC0(p->p_fd);
	FUNC1(td);
	p->p_fd = tmp;
}
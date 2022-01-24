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
struct TYPE_2__ {int code; } ;
struct thread {TYPE_1__ td_sa; struct proc* td_proc; } ;
struct proc {int p_pid; char* p_comm; } ;
struct nosys_args {int dummy; } ;

/* Variables and functions */
 int ENOSYS ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  SIGSYS ; 
 int kern_lognosys ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

int
FUNC5(struct thread *td, struct nosys_args *args)
{
	struct proc *p;

	p = td->td_proc;

	FUNC0(p);
	FUNC3(td, SIGSYS);
	FUNC1(p);
	if (kern_lognosys == 1 || kern_lognosys == 3) {
		FUNC4("pid %d comm %s: nosys %d\n", p->p_pid, p->p_comm,
		    td->td_sa.code);
	}
	if (kern_lognosys == 2 || kern_lognosys == 3) {
		FUNC2("pid %d comm %s: nosys %d\n", p->p_pid, p->p_comm,
		    td->td_sa.code);
	}
	return (ENOSYS);
}
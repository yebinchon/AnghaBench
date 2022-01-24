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
struct thread {int /*<<< orphan*/ * td_retval; struct proc* td_proc; } ;
struct proc {TYPE_1__* p_pgrp; } ;
struct getpgid_args {scalar_t__ pid; } ;
struct TYPE_2__ {int /*<<< orphan*/  pg_id; } ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int FUNC2 (struct thread*,struct proc*) ; 
 struct proc* FUNC3 (scalar_t__) ; 

int
FUNC4(struct thread *td, struct getpgid_args *uap)
{
	struct proc *p;
	int error;

	if (uap->pid == 0) {
		p = td->td_proc;
		FUNC0(p);
	} else {
		p = FUNC3(uap->pid);
		if (p == NULL)
			return (ESRCH);
		error = FUNC2(td, p);
		if (error) {
			FUNC1(p);
			return (error);
		}
	}
	td->td_retval[0] = p->p_pgrp->pg_id;
	FUNC1(p);
	return (0);
}
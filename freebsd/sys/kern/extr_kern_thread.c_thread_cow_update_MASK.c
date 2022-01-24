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
struct ucred {int dummy; } ;
struct thread {int /*<<< orphan*/  td_cowgen; struct plimit* td_limit; struct ucred* td_ucred; struct proc* td_proc; } ;
struct proc {int /*<<< orphan*/  p_cowgen; struct plimit* p_limit; struct ucred* p_ucred; } ;
struct plimit {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucred*) ; 
 struct ucred* FUNC3 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC4 (struct plimit*) ; 
 struct plimit* FUNC5 (struct plimit*) ; 

void
FUNC6(struct thread *td)
{
	struct proc *p;
	struct ucred *oldcred;
	struct plimit *oldlimit;

	p = td->td_proc;
	oldcred = NULL;
	oldlimit = NULL;
	FUNC0(p);
	if (td->td_ucred != p->p_ucred) {
		oldcred = td->td_ucred;
		td->td_ucred = FUNC3(p->p_ucred);
	}
	if (td->td_limit != p->p_limit) {
		oldlimit = td->td_limit;
		td->td_limit = FUNC5(p->p_limit);
	}
	td->td_cowgen = p->p_cowgen;
	FUNC1(p);
	if (oldcred != NULL)
		FUNC2(oldcred);
	if (oldlimit != NULL)
		FUNC4(oldlimit);
}
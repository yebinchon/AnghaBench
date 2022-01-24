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
struct thread {scalar_t__ td_tid; int /*<<< orphan*/  td_flags; struct proc* td_proc; int /*<<< orphan*/  td_pflags; } ;
struct thr_wake_args {scalar_t__ id; } ;
struct proc {int /*<<< orphan*/  p_pid; } ;
typedef  int /*<<< orphan*/  lwpid_t ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  TDF_THRWAKEUP ; 
 int /*<<< orphan*/  TDP_WAKEUP ; 
 struct thread* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

int
FUNC5(struct thread *td, struct thr_wake_args *uap)
	/* long id */
{
	struct proc *p;
	struct thread *ttd;

	if (uap->id == td->td_tid) {
		td->td_pflags |= TDP_WAKEUP;
		return (0);
	} 

	p = td->td_proc;
	ttd = FUNC1((lwpid_t)uap->id, p->p_pid);
	if (ttd == NULL)
		return (ESRCH);
	FUNC2(ttd);
	ttd->td_flags |= TDF_THRWAKEUP;
	FUNC3(ttd);
	FUNC4((void *)ttd);
	FUNC0(p);
	return (0);
}
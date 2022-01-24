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
struct TYPE_4__ {int /*<<< orphan*/  sq_signals; } ;
struct thread {TYPE_2__ td_sigqueue; struct proc* td_proc; } ;
struct sigpending_args {int /*<<< orphan*/  set; } ;
struct TYPE_3__ {int /*<<< orphan*/  sq_signals; } ;
struct proc {TYPE_1__ p_sigqueue; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC4(struct thread *td, struct sigpending_args *uap)
{
	struct proc *p = td->td_proc;
	sigset_t pending;

	FUNC0(p);
	pending = p->p_sigqueue.sq_signals;
	FUNC2(pending, td->td_sigqueue.sq_signals);
	FUNC1(p);
	return (FUNC3(&pending, uap->set, sizeof(sigset_t)));
}
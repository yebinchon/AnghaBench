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
struct thread {int /*<<< orphan*/  td_sigmask; } ;
struct sigacts {int /*<<< orphan*/  ps_mtx; int /*<<< orphan*/  ps_sigintr; int /*<<< orphan*/  ps_sigcatch; } ;
struct proc {int p_flag; int /*<<< orphan*/  p_siglist; struct sigacts* p_sigacts; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  ERESTART ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int P_TRACED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int) ; 
 int SIGPROCMASK_PS_LOCKED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIG_CATCH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 
 struct thread* FUNC10 (struct proc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct thread*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC12(struct proc *p, sigset_t block, int flags)
{
	struct sigacts *ps;
	struct thread *td;
	int sig;

	FUNC0(p, MA_OWNED);
	ps = p->p_sigacts;
	FUNC5(&ps->ps_mtx, (flags & SIGPROCMASK_PS_LOCKED) != 0 ?
	    MA_OWNED : MA_NOTOWNED);
	if (FUNC2(p->p_siglist))
		return;
	FUNC4(block, p->p_siglist);
	while ((sig = FUNC8(&block)) != 0) {
		FUNC1(block, sig);
		td = FUNC10(p, sig, 0);
		FUNC9(td);
		if (!(flags & SIGPROCMASK_PS_LOCKED))
			FUNC6(&ps->ps_mtx);
		if (p->p_flag & P_TRACED ||
		    (FUNC3(ps->ps_sigcatch, sig) &&
		    !FUNC3(td->td_sigmask, sig)))
			FUNC11(td, sig, SIG_CATCH,
			    (FUNC3(ps->ps_sigintr, sig) ? EINTR :
			     ERESTART));
		if (!(flags & SIGPROCMASK_PS_LOCKED))
			FUNC7(&ps->ps_mtx);
	}
}
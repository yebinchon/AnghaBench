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
struct thread {int /*<<< orphan*/  td_sigmask; int /*<<< orphan*/  td_sigqueue; struct proc* td_proc; } ;
struct proc {int p_numthreads; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct thread *td)
{
	struct proc *p;
	sigset_t unblocked;

	p = td->td_proc;
	FUNC0(p, MA_OWNED);

	FUNC4(&td->td_sigqueue);
	if (p->p_numthreads == 1)
		return;

	/*
	 * Since we cannot handle signals, notify signal post code
	 * about this by filling the sigmask.
	 *
	 * Also, if needed, wake up thread(s) that do not block the
	 * same signals as the exiting thread, since the thread might
	 * have been selected for delivery and woken up.
	 */
	FUNC1(unblocked);
	FUNC2(unblocked, td->td_sigmask);
	FUNC1(td->td_sigmask);
	FUNC3(p, unblocked, 0);

}
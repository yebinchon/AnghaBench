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
struct thread {int /*<<< orphan*/  td_siglist; int /*<<< orphan*/  td_sigmask; struct proc* td_proc; } ;
struct proc {TYPE_1__* p_sigacts; int /*<<< orphan*/  p_siglist; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_2__ {int /*<<< orphan*/  ps_mtx; int /*<<< orphan*/  ps_sigignore; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(struct thread *td)
{
	struct proc *p;
	sigset_t tmpset;

	if (td == NULL)
		return 0;

	p = td->td_proc;
	FUNC0(p);
	tmpset = p->p_siglist;
	FUNC4(tmpset, td->td_siglist);
	FUNC3(tmpset, td->td_sigmask);
	FUNC6(&p->p_sigacts->ps_mtx);
	FUNC3(tmpset, p->p_sigacts->ps_sigignore);
	FUNC7(&p->p_sigacts->ps_mtx);
	if (FUNC2(td->td_siglist) && FUNC5(tmpset)) {
		FUNC1(p);
                return EINTR;
	}
	FUNC1(p);
	return 0;
}
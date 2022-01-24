#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/ * td_retval; struct proc* td_proc; } ;
struct proc {void* p_xsig; int /*<<< orphan*/  p_pid; int /*<<< orphan*/  p_ksi; int /*<<< orphan*/  p_flag; } ;
struct TYPE_3__ {int si_code; void* si_status; } ;
typedef  TYPE_1__ siginfo_t ;

/* Variables and functions */
 int CLD_CONTINUED ; 
 int CLD_STOPPED ; 
 int CLD_TRAPPED ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  P_CONTINUED ; 
 int /*<<< orphan*/  P_WAITED ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 void* SIGCONT ; 
 int WNOWAIT ; 
 void* FUNC4 (void*) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct thread *td, struct proc *p, siginfo_t *siginfo,
    int *status, int options, int si_code)
{
	bool cont;

	FUNC2(p, MA_OWNED);
	FUNC6(&proctree_lock, SA_XLOCKED);
	FUNC0(si_code == CLD_TRAPPED || si_code == CLD_STOPPED ||
	    si_code == CLD_CONTINUED);

	cont = si_code == CLD_CONTINUED;
	if ((options & WNOWAIT) == 0) {
		if (cont)
			p->p_flag &= ~P_CONTINUED;
		else
			p->p_flag |= P_WAITED;
		FUNC1(td->td_proc);
		FUNC5(p->p_ksi);
		FUNC3(td->td_proc);
	}
	FUNC7(&proctree_lock);
	if (siginfo != NULL) {
		siginfo->si_code = si_code;
		siginfo->si_status = cont ? SIGCONT : p->p_xsig;
	}
	if (status != NULL)
		*status = cont ? SIGCONT : FUNC4(p->p_xsig);
	FUNC3(p);
	td->td_retval[0] = p->p_pid;
}
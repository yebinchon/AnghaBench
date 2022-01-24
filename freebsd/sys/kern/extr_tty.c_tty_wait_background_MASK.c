#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty {scalar_t__ t_pgrp; int /*<<< orphan*/  t_bgwait; } ;
struct thread {int /*<<< orphan*/  td_sigmask; struct proc* td_proc; } ;
struct proc {scalar_t__ p_pgrp; int p_flag; TYPE_1__* p_sigacts; } ;
struct pgrp {scalar_t__ pg_jobc; } ;
struct TYPE_6__ {int ksi_signo; int /*<<< orphan*/  ksi_code; } ;
typedef  TYPE_2__ ksiginfo_t ;
struct TYPE_5__ {int /*<<< orphan*/  ps_sigignore; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC2 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int P_PPWAIT ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 int SIGTTIN ; 
 int SIGTTOU ; 
 int /*<<< orphan*/  SI_KERNEL ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct pgrp*,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty*,struct proc*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct tty*,int /*<<< orphan*/ *) ; 

int
FUNC11(struct tty *tp, struct thread *td, int sig)
{
	struct proc *p = td->td_proc;
	struct pgrp *pg;
	ksiginfo_t ksi;
	int error;

	FUNC0(sig == SIGTTIN || sig == SIGTTOU);
	FUNC9(tp, MA_OWNED);

	for (;;) {
		FUNC3(p);
		/*
		 * The process should only sleep, when:
		 * - This terminal is the controlling terminal
		 * - Its process group is not the foreground process
		 *   group
		 * - The parent process isn't waiting for the child to
		 *   exit
		 * - the signal to send to the process isn't masked
		 */
		if (!FUNC8(tp, p) || p->p_pgrp == tp->t_pgrp) {
			/* Allow the action to happen. */
			FUNC4(p);
			return (0);
		}

		if (FUNC5(p->p_sigacts->ps_sigignore, sig) ||
		    FUNC5(td->td_sigmask, sig)) {
			/* Only allow them in write()/ioctl(). */
			FUNC4(p);
			return (sig == SIGTTOU ? 0 : EIO);
		}

		pg = p->p_pgrp;
		if (p->p_flag & P_PPWAIT || pg->pg_jobc == 0) {
			/* Don't allow the action to happen. */
			FUNC4(p);
			return (EIO);
		}
		FUNC4(p);

		/*
		 * Send the signal and sleep until we're the new
		 * foreground process group.
		 */
		if (sig != 0) {
			FUNC6(&ksi);
			ksi.ksi_code = SI_KERNEL;
			ksi.ksi_signo = sig;
			sig = 0;
		}
		FUNC1(pg);
		FUNC7(pg, ksi.ksi_signo, 1, &ksi);
		FUNC2(pg);

		error = FUNC10(tp, &tp->t_bgwait);
		if (error)
			return (error);
	}
}
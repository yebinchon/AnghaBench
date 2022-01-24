#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct thread {int td_xsig; int td_dbgflags; int /*<<< orphan*/  td_sigqueue; int /*<<< orphan*/ * td_wchan; int /*<<< orphan*/  td_tid; struct proc* td_proc; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock_object; } ;
struct proc {int p_flag; int p_flag2; int p_xsig; struct thread* p_xthread; scalar_t__ p_ptevents; int /*<<< orphan*/  p_pid; TYPE_1__ p_mtx; } ;
struct TYPE_8__ {int ksi_flags; int ksi_signo; } ;
typedef  TYPE_2__ ksiginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int KSI_HEAD ; 
 int KSI_PTRACE ; 
 int /*<<< orphan*/  KTR_PTRACE ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int P2_PTRACE_FSTP ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 scalar_t__ FUNC5 (struct proc*) ; 
 int P_SINGLE_EXIT ; 
 int P_STOPPED_SIG ; 
 int P_STOPPED_TRACE ; 
 int P_TRACED ; 
 int P_WEXIT ; 
 int SIGKILL ; 
 int TDB_EXIT ; 
 int TDB_FSTP ; 
 int TDB_STOPATFORK ; 
 int TDB_SUSPEND ; 
 int TDB_XSIG ; 
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*,struct proc*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int,TYPE_2__*) ; 
 struct thread* FUNC11 (struct proc*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct proc*,struct thread*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (struct thread*,struct proc*) ; 

int
FUNC14(struct thread *td, int sig, ksiginfo_t *si)
{
	struct proc *p = td->td_proc;
	struct thread *td2;
	ksiginfo_t ksi;
	int prop;

	FUNC2(p, MA_OWNED);
	FUNC1(!(p->p_flag & P_WEXIT), ("Stopping exiting process"));
	FUNC6(WARN_GIANTOK | WARN_SLEEPOK,
	    &p->p_mtx.lock_object, "Stopping for traced signal");

	td->td_xsig = sig;

	if (si == NULL || (si->ksi_flags & KSI_PTRACE) == 0) {
		td->td_dbgflags |= TDB_XSIG;
		FUNC0(KTR_PTRACE, "ptracestop: tid %d (pid %d) flags %#x sig %d",
		    td->td_tid, p->p_pid, td->td_dbgflags, sig);
		FUNC3(p);
		while ((p->p_flag & P_TRACED) && (td->td_dbgflags & TDB_XSIG)) {
			if (FUNC5(p)) {
				/*
				 * Ensure that, if we've been PT_KILLed, the
				 * exit status reflects that. Another thread
				 * may also be in ptracestop(), having just
				 * received the SIGKILL, but this thread was
				 * unsuspended first.
				 */
				td->td_dbgflags &= ~TDB_XSIG;
				td->td_xsig = SIGKILL;
				p->p_ptevents = 0;
				break;
			}
			if (p->p_flag & P_SINGLE_EXIT &&
			    !(td->td_dbgflags & TDB_EXIT)) {
				/*
				 * Ignore ptrace stops except for thread exit
				 * events when the process exits.
				 */
				td->td_dbgflags &= ~TDB_XSIG;
				FUNC4(p);
				return (0);
			}

			/*
			 * Make wait(2) work.  Ensure that right after the
			 * attach, the thread which was decided to become the
			 * leader of attach gets reported to the waiter.
			 * Otherwise, just avoid overwriting another thread's
			 * assignment to p_xthread.  If another thread has
			 * already set p_xthread, the current thread will get
			 * a chance to report itself upon the next iteration.
			 */
			if ((td->td_dbgflags & TDB_FSTP) != 0 ||
			    ((p->p_flag2 & P2_PTRACE_FSTP) == 0 &&
			    p->p_xthread == NULL)) {
				p->p_xsig = sig;
				p->p_xthread = td;

				/*
				 * If we are on sleepqueue already,
				 * let sleepqueue code decide if it
				 * needs to go sleep after attach.
				 */
				if (td->td_wchan == NULL)
					td->td_dbgflags &= ~TDB_FSTP;

				p->p_flag2 &= ~P2_PTRACE_FSTP;
				p->p_flag |= P_STOPPED_SIG | P_STOPPED_TRACE;
				FUNC8(td, p, 0);
			}
			if ((td->td_dbgflags & TDB_STOPATFORK) != 0) {
				td->td_dbgflags &= ~TDB_STOPATFORK;
			}
stopme:
			FUNC13(td, p);
			if (p->p_xthread == td)
				p->p_xthread = NULL;
			if (!(p->p_flag & P_TRACED))
				break;
			if (td->td_dbgflags & TDB_SUSPEND) {
				if (p->p_flag & P_SINGLE_EXIT)
					break;
				goto stopme;
			}
		}
		FUNC4(p);
	}

	if (si != NULL && sig == td->td_xsig) {
		/* Parent wants us to take the original signal unchanged. */
		si->ksi_flags |= KSI_HEAD;
		if (FUNC10(&td->td_sigqueue, sig, si) != 0)
			si->ksi_signo = 0;
	} else if (td->td_xsig != 0) {
		/*
		 * If parent wants us to take a new signal, then it will leave
		 * it in td->td_xsig; otherwise we just look for signals again.
		 */
		FUNC7(&ksi);
		ksi.ksi_signo = td->td_xsig;
		ksi.ksi_flags |= KSI_PTRACE;
		prop = FUNC9(td->td_xsig);
		td2 = FUNC11(p, td->td_xsig, prop);
		FUNC12(p, td2, td->td_xsig, &ksi);
		if (td != td2)
			return (0);
	}

	return (td->td_xsig);
}
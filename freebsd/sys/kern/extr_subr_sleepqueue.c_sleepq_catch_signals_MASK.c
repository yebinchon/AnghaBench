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
struct thread {int td_pflags; int td_flags; int td_dbgflags; int /*<<< orphan*/ * td_lock; int /*<<< orphan*/  td_name; } ;
struct sleepqueue_chain {int /*<<< orphan*/  sc_lock; } ;
struct sleepqueue {int dummy; } ;
struct sigacts {int /*<<< orphan*/  ps_mtx; int /*<<< orphan*/  ps_sigintr; } ;
struct proc {struct sigacts* p_sigacts; scalar_t__ p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,void*,long,int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  KTR_PROC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 
 struct sleepqueue_chain* FUNC7 (void*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int TDB_FSTP ; 
 int TDF_NEEDSIGCHK ; 
 int TDF_NEEDSUSPCHK ; 
 int TDF_SBDRY ; 
 int TDF_SEINTR ; 
 int TDF_SERESTART ; 
 int TDP_WAKEUP ; 
 scalar_t__ FUNC9 (struct thread*) ; 
 int FUNC10 (struct thread*) ; 
 int FUNC11 (struct thread*) ; 
 struct proc* curproc ; 
 int FUNC12 (struct thread*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 struct sleepqueue* FUNC19 (void*) ; 
 scalar_t__ FUNC20 (struct sleepqueue*,struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (void*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct thread*) ; 
 int FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (struct thread*) ; 

__attribute__((used)) static int
FUNC25(void *wchan, int pri)
{
	struct sleepqueue_chain *sc;
	struct sleepqueue *sq;
	struct thread *td;
	struct proc *p;
	struct sigacts *ps;
	int sig, ret;

	ret = 0;
	td = curthread;
	p = curproc;
	sc = FUNC7(wchan);
	FUNC13(&sc->sc_lock, MA_OWNED);
	FUNC2(wchan != NULL);
	if ((td->td_pflags & TDP_WAKEUP) != 0) {
		td->td_pflags &= ~TDP_WAKEUP;
		ret = EINTR;
		FUNC22(td);
		goto out;
	}

	/*
	 * See if there are any pending signals or suspension requests for this
	 * thread.  If not, we can switch immediately.
	 */
	FUNC22(td);
	if ((td->td_flags & (TDF_NEEDSIGCHK | TDF_NEEDSUSPCHK)) != 0) {
		FUNC24(td);
		FUNC17(&sc->sc_lock);
		FUNC0(KTR_PROC, "sleepq catching signals: thread %p (pid %ld, %s)",
			(void *)td, (long)p->p_pid, td->td_name);
		FUNC3(p);
		/*
		 * Check for suspension first. Checking for signals and then
		 * suspending could result in a missed signal, since a signal
		 * can be delivered while this thread is suspended.
		 */
		if ((td->td_flags & TDF_NEEDSUSPCHK) != 0) {
			ret = FUNC23(1);
			FUNC2(ret == 0 || ret == EINTR || ret == ERESTART);
			if (ret != 0) {
				FUNC6(p);
				FUNC15(&sc->sc_lock);
				FUNC22(td);
				goto out;
			}
		}
		if ((td->td_flags & TDF_NEEDSIGCHK) != 0) {
			ps = p->p_sigacts;
			FUNC14(&ps->ps_mtx);
			sig = FUNC12(td);
			if (sig == -1) {
				FUNC16(&ps->ps_mtx);
				FUNC1((td->td_flags & TDF_SBDRY) != 0,
				    ("lost TDF_SBDRY"));
				FUNC1(FUNC11(td),
				    ("lost TDF_SERESTART of TDF_SEINTR"));
				FUNC1((td->td_flags &
				    (TDF_SEINTR | TDF_SERESTART)) !=
				    (TDF_SEINTR | TDF_SERESTART),
				    ("both TDF_SEINTR and TDF_SERESTART"));
				ret = FUNC10(td);
			} else if (sig != 0) {
				ret = FUNC8(ps->ps_sigintr, sig) ?
				    EINTR : ERESTART;
				FUNC16(&ps->ps_mtx);
			} else {
				FUNC16(&ps->ps_mtx);
			}

			/*
			 * Do not go into sleep if this thread was the
			 * ptrace(2) attach leader.  cursig() consumed
			 * SIGSTOP from PT_ATTACH, but we usually act
			 * on the signal by interrupting sleep, and
			 * should do that here as well.
			 */
			if ((td->td_dbgflags & TDB_FSTP) != 0) {
				if (ret == 0)
					ret = EINTR;
				td->td_dbgflags &= ~TDB_FSTP;
			}
		}
		/*
		 * Lock the per-process spinlock prior to dropping the PROC_LOCK
		 * to avoid a signal delivery race.  PROC_LOCK, PROC_SLOCK, and
		 * thread_lock() are currently held in tdsendsignal().
		 */
		FUNC4(p);
		FUNC15(&sc->sc_lock);
		FUNC6(p);
		FUNC22(td);
		FUNC5(p);
	}
	if (ret == 0) {
		FUNC21(wchan, pri);
		return (0);
	}
out:
	/*
	 * There were pending signals and this thread is still
	 * on the sleep queue, remove it from the sleep queue.
	 */
	if (FUNC9(td)) {
		sq = FUNC19(wchan);
		if (FUNC20(sq, td, 0)) {
#ifdef INVARIANTS
			/*
			 * This thread hasn't gone to sleep yet, so it
			 * should not be swapped out.
			 */
			panic("not waking up swapper");
#endif
		}
	}
	FUNC17(&sc->sc_lock);
	FUNC2(td->td_lock != &sc->sc_lock);
	return (ret);
}
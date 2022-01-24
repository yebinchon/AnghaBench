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
struct thread {int td_flags; struct proc* td_proc; } ;
struct proc {int p_flag; scalar_t__ p_numthreads; scalar_t__ p_suspcount; int /*<<< orphan*/  p_boundary_count; struct thread* p_singlethread; TYPE_1__* p_sysent; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sv_thread_detach ) (struct thread*) ;} ;

/* Variables and functions */
 int EINTR ; 
 int ERESTART ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 scalar_t__ FUNC6 (struct proc*) ; 
 int P_SINGLE_BOUNDARY ; 
 int P_SINGLE_EXIT ; 
 scalar_t__ P_STOPPED_SINGLE ; 
 int SWT_SUSPEND ; 
 int SW_INVOL ; 
 int TDF_BOUNDARY ; 
 int TDF_SBDRY ; 
 int TDF_SEINTR ; 
 int TDF_SERESTART ; 
 int FUNC7 (struct thread*) ; 
 scalar_t__ FUNC8 (struct thread*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC10 (struct thread*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (struct thread*) ; 
 int /*<<< orphan*/  FUNC16 (struct thread*) ; 
 int /*<<< orphan*/  FUNC17 (struct proc*) ; 
 scalar_t__ FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (struct thread*) ; 
 int /*<<< orphan*/  FUNC20 (struct thread*) ; 
 int FUNC21 (struct thread*,struct proc*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct thread*) ; 

int
FUNC23(int return_instead)
{
	struct thread *td;
	struct proc *p;
	int wakeup_swapper;

	td = curthread;
	p = td->td_proc;
	FUNC13(&Giant, MA_NOTOWNED);
	FUNC2(p, MA_OWNED);
	while (FUNC18()) {
		if (FUNC6(p) == P_STOPPED_SINGLE) {
			FUNC0(p->p_singlethread != NULL,
			    ("singlethread not set"));
			/*
			 * The only suspension in action is a
			 * single-threading. Single threader need not stop.
			 * It is safe to access p->p_singlethread unlocked
			 * because it can only be set to our address by us.
			 */
			if (p->p_singlethread == td)
				return (0);	/* Exempt from stopping. */
		}
		if ((p->p_flag & P_SINGLE_EXIT) && return_instead)
			return (EINTR);

		/* Should we goto user boundary if we didn't come from there? */
		if (FUNC6(p) == P_STOPPED_SINGLE &&
		    (p->p_flag & P_SINGLE_BOUNDARY) && return_instead)
			return (ERESTART);

		/*
		 * Ignore suspend requests if they are deferred.
		 */
		if ((td->td_flags & TDF_SBDRY) != 0) {
			FUNC0(return_instead,
			    ("TDF_SBDRY set for unsafe thread_suspend_check"));
			FUNC0((td->td_flags & (TDF_SEINTR | TDF_SERESTART)) !=
			    (TDF_SEINTR | TDF_SERESTART),
			    ("both TDF_SEINTR and TDF_SERESTART"));
			return (FUNC8(td) ? FUNC7(td) : 0);
		}

		/*
		 * If the process is waiting for us to exit,
		 * this thread should just suicide.
		 * Assumes that P_SINGLE_EXIT implies P_STOPPED_SINGLE.
		 */
		if ((p->p_flag & P_SINGLE_EXIT) && (p->p_singlethread != td)) {
			FUNC5(p);

			/*
			 * Allow Linux emulation layer to do some work
			 * before thread suicide.
			 */
			if (FUNC9(p->p_sysent->sv_thread_detach != NULL))
				(p->p_sysent->sv_thread_detach)(td);
			FUNC22(td);
			FUNC10(td);
			FUNC14("stopped thread did not exit");
		}

		FUNC3(p);
		FUNC17(p);
		if (FUNC6(p) == P_STOPPED_SINGLE) {
			if (p->p_numthreads == p->p_suspcount + 1) {
				FUNC16(p->p_singlethread);
				wakeup_swapper = FUNC21(
				    p->p_singlethread, p, false);
				FUNC20(p->p_singlethread);
				if (wakeup_swapper)
					FUNC11();
			}
		}
		FUNC5(p);
		FUNC16(td);
		/*
		 * When a thread suspends, it just
		 * gets taken off all queues.
		 */
		FUNC19(td);
		if (return_instead == 0) {
			p->p_boundary_count++;
			td->td_flags |= TDF_BOUNDARY;
		}
		FUNC4(p);
		FUNC12(SW_INVOL | SWT_SUSPEND, NULL);
		FUNC20(td);
		FUNC1(p);
	}
	return (0);
}
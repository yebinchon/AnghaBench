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
struct thread {int td_flags; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  ERESTART ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
#define  SINGLE_ALLPROC 131 
#define  SINGLE_BOUNDARY 130 
#define  SINGLE_EXIT 129 
#define  SINGLE_NO_EXIT 128 
 int TDF_ALLPROCSUSP ; 
 int TDF_BOUNDARY ; 
 int TDF_SBDRY ; 
 int TDF_SINTR ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int FUNC7 (struct thread*,struct proc*,int) ; 

__attribute__((used)) static int
FUNC8(int mode, struct thread *td2, struct proc *p)
{
	int wakeup_swapper;

	FUNC0(p, MA_OWNED);
	FUNC1(p, MA_OWNED);
	FUNC4(td2, MA_OWNED);

	wakeup_swapper = 0;
	switch (mode) {
	case SINGLE_EXIT:
		if (FUNC2(td2))
			wakeup_swapper |= FUNC7(td2, p, true);
		if (FUNC3(td2) && (td2->td_flags & TDF_SINTR) != 0)
			wakeup_swapper |= FUNC5(td2, EINTR);
		break;
	case SINGLE_BOUNDARY:
	case SINGLE_NO_EXIT:
		if (FUNC2(td2) && (td2->td_flags & TDF_BOUNDARY) == 0)
			wakeup_swapper |= FUNC7(td2, p, false);
		if (FUNC3(td2) && (td2->td_flags & TDF_SINTR) != 0)
			wakeup_swapper |= FUNC5(td2, ERESTART);
		break;
	case SINGLE_ALLPROC:
		/*
		 * ALLPROC suspend tries to avoid spurious EINTR for
		 * threads sleeping interruptable, by suspending the
		 * thread directly, similarly to sig_suspend_threads().
		 * Since such sleep is not performed at the user
		 * boundary, TDF_BOUNDARY flag is not set, and TDF_ALLPROCSUSP
		 * is used to avoid immediate un-suspend.
		 */
		if (FUNC2(td2) && (td2->td_flags & (TDF_BOUNDARY |
		    TDF_ALLPROCSUSP)) == 0)
			wakeup_swapper |= FUNC7(td2, p, false);
		if (FUNC3(td2) && (td2->td_flags & TDF_SINTR) != 0) {
			if ((td2->td_flags & TDF_SBDRY) == 0) {
				FUNC6(td2);
				td2->td_flags |= TDF_ALLPROCSUSP;
			} else {
				wakeup_swapper |= FUNC5(td2, ERESTART);
			}
		}
		break;
	}
	return (wakeup_swapper);
}
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
struct thread {int /*<<< orphan*/  td_pcb; TYPE_1__* td_proc; } ;
struct TYPE_2__ {int p_pid; } ;

/* Variables and functions */
 struct thread* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  hw_float ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct thread*,int,struct thread*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(void)
{
	struct thread *td;

	if (!hw_float)
		return (0);
	td = curthread;
	FUNC2();
	if (FUNC1(FUNC0(fpcurthread) == td)) {
		/*
		 * Some virtual machines seems to set %cr0.TS at
		 * arbitrary moments.  Silently clear the TS bit
		 * regardless of the eager/lazy FPU context switch
		 * mode.
		 */
		FUNC7();
	} else {
		if (FUNC1(FUNC0(fpcurthread) != NULL)) {
			FUNC5(
		    "npxdna: fpcurthread = %p (%d), curthread = %p (%d)\n",
			    FUNC0(fpcurthread),
			    FUNC0(fpcurthread)->td_proc->p_pid,
			    td, td->td_proc->p_pid);
			FUNC4("npxdna");
		}
		FUNC6(td, td->td_pcb);
	}
	FUNC3();
	return (1);
}
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
struct thread {TYPE_1__* td_pcb; } ;
struct TYPE_2__ {int /*<<< orphan*/  pcb_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  PCB_NPXINITDONE ; 
 struct thread* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpu_fxsr ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(void)
{
	struct thread *td;

	/*
	 * Discard pending exceptions in the !cpu_fxsr case so that unmasked
	 * ones don't cause a panic on the next frstor.
	 */
	if (!cpu_fxsr)
		FUNC4();

	td = FUNC2(fpcurthread);
	FUNC1(td == curthread, ("fpudrop: fpcurthread != curthread"));
	FUNC0(td);
	FUNC3(fpcurthread, NULL);
	td->td_pcb->pcb_flags &= ~PCB_NPXINITDONE;
	FUNC5();
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/  td_pcb; } ;
struct TYPE_4__ {TYPE_1__* td_pcb; } ;
struct TYPE_3__ {int pcb_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int PCB_NPXINITDONE ; 
 int PCB_NPXUSERINITDONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct thread* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* curthread ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void
FUNC6(struct thread *td)
{

	FUNC0(FUNC1(td->td_pcb), ("fpstate_drop: kernel-owned fpu"));
	FUNC3();
	if (FUNC2(fpcurthread) == td)
		FUNC5();
	/*
	 * XXX force a full drop of the npx.  The above only drops it if we
	 * owned it.  npxgetregs() has the same bug in the !cpu_fxsr case.
	 *
	 * XXX I don't much like npxgetregs()'s semantics of doing a full
	 * drop.  Dropping only to the pcb matches fnsave's behaviour.
	 * We only need to drop to !PCB_INITDONE in sendsig().  But
	 * sendsig() is the only caller of npxgetregs()... perhaps we just
	 * have too many layers.
	 */
	curthread->td_pcb->pcb_flags &= ~(PCB_NPXINITDONE |
	    PCB_NPXUSERINITDONE);
	FUNC4();
}
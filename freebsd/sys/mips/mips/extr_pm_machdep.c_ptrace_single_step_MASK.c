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
struct trapframe {uintptr_t pc; int cause; int /*<<< orphan*/  fsr; } ;
struct TYPE_2__ {uintptr_t md_ss_addr; int md_ss_instr; } ;
struct thread {TYPE_1__ td_md; int /*<<< orphan*/  td_tid; struct proc* td_proc; struct trapframe* td_frame; } ;
struct proc {char* p_comm; int p_pid; } ;
typedef  uintptr_t off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,uintptr_t,int) ; 
 int EFAULT ; 
 int /*<<< orphan*/  KTR_PTRACE ; 
 int MIPS_BREAK_SSTEP ; 
 int MIPS_CR_BR_DELAY ; 
 uintptr_t FUNC1 (struct trapframe*,uintptr_t,int /*<<< orphan*/ ,uintptr_t) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,void*,void*) ; 
 int FUNC5 (struct thread*,uintptr_t,int*) ; 
 int FUNC6 (struct thread*,uintptr_t,int) ; 

int
FUNC7(struct thread *td)
{
	uintptr_t va;
	struct trapframe *locr0 = td->td_frame;
	int error;
	int bpinstr = MIPS_BREAK_SSTEP;
	int curinstr;
	struct proc *p;

	p = td->td_proc;
	FUNC3(p);
	/*
	 * Fetch what's at the current location.
	 */
	error = FUNC5(td, locr0->pc, &curinstr);
	if (error)
		goto out;

	FUNC0(KTR_PTRACE,
	    "ptrace_single_step: tid %d, current instr at %#lx: %#08x",
	    td->td_tid, locr0->pc, curinstr);

	/* compute next address after current location */
	if (locr0->cause & MIPS_CR_BR_DELAY) {
		va = FUNC1(locr0, locr0->pc, locr0->fsr,
		    (uintptr_t)&curinstr);
	} else {
		va = locr0->pc + 4;
	}
	if (td->td_md.md_ss_addr) {
		FUNC4("SS %s (%d): breakpoint already set at %p (va %p)\n",
		    p->p_comm, p->p_pid, (void *)td->td_md.md_ss_addr,
		    (void *)va); /* XXX */
		error = EFAULT;
		goto out;
	}
	td->td_md.md_ss_addr = va;
	/*
	 * Fetch what's at the current location.
	 */
	error = FUNC5(td, (off_t)va, &td->td_md.md_ss_instr);
	if (error)
		goto out;

	/*
	 * Store breakpoint instruction at the "next" location now.
	 */
	error = FUNC6(td, va, bpinstr);

	/*
	 * The sync'ing of I & D caches is done by proc_rwmem()
	 * through proc_writemem().
	 */

out:
	FUNC2(p);
	if (error == 0)
		FUNC0(KTR_PTRACE,
		    "ptrace_single_step: tid %d, break set at %#lx: (%#08x)",
		    td->td_tid, va, td->td_md.md_ss_instr); 
	return (error);
}
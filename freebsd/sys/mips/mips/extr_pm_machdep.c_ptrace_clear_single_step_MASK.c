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
struct TYPE_2__ {scalar_t__ md_ss_addr; int /*<<< orphan*/  md_ss_instr; } ;
struct thread {TYPE_1__ td_md; int /*<<< orphan*/  td_tid; struct proc* td_proc; } ;
struct proc {int /*<<< orphan*/  p_pid; int /*<<< orphan*/  p_comm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  KTR_PTRACE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct thread*,scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC6(struct thread *td)
{
	struct proc *p;
	int error;

	p = td->td_proc;
	FUNC2(p, MA_OWNED);
	if (!td->td_md.md_ss_addr)
		return EINVAL;

	/*
	 * Restore original instruction and clear BP
	 */
	FUNC3(p);
	FUNC0(KTR_PTRACE,
	    "ptrace_clear_single_step: tid %d, restore instr at %#lx: %#08x",
	    td->td_tid, td->td_md.md_ss_addr, td->td_md.md_ss_instr);
	error = FUNC5(td, td->td_md.md_ss_addr,
	    td->td_md.md_ss_instr);
	FUNC1(p);

	/* The sync'ing of I & D caches is done by proc_rwmem(). */

	if (error != 0) {
		FUNC4(LOG_ERR,
		    "SS %s %d: can't restore instruction at %p: %x\n",
		    p->p_comm, p->p_pid, (void *)td->td_md.md_ss_addr,
		    td->td_md.md_ss_instr);
	}
	td->td_md.md_ss_addr = 0;
	return 0;
}
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
struct trapframe {int tf_edx; int pcb_esi; int pcb_esp; int pcb_ebx; struct proc_ldt* md_ldt; scalar_t__ pcb_ext; scalar_t__ pcb_eip; scalar_t__ pcb_ebp; scalar_t__ pcb_edi; int /*<<< orphan*/  pcb_cr3; int /*<<< orphan*/  tf_eflags; scalar_t__ tf_eax; struct trapframe* pcb_save; int /*<<< orphan*/  pcb_gs; } ;
struct TYPE_2__ {int md_spinlock_count; int md_saved_flags; } ;
struct thread {TYPE_1__ td_md; struct trapframe* td_frame; struct trapframe* td_pcb; struct proc* td_proc; } ;
struct proc_ldt {int ldt_refcnt; int /*<<< orphan*/  ldt_len; } ;
struct proc {int p_pfsflags; int /*<<< orphan*/  p_vmspace; struct trapframe p_md; } ;
struct pcb {int tf_edx; int pcb_esi; int pcb_esp; int pcb_ebx; struct proc_ldt* md_ldt; scalar_t__ pcb_ext; scalar_t__ pcb_eip; scalar_t__ pcb_ebp; scalar_t__ pcb_edi; int /*<<< orphan*/  pcb_cr3; int /*<<< orphan*/  tf_eflags; scalar_t__ tf_eax; struct pcb* pcb_save; int /*<<< orphan*/  pcb_gs; } ;
struct mdproc {int tf_edx; int pcb_esi; int pcb_esp; int pcb_ebx; struct proc_ldt* md_ldt; scalar_t__ pcb_ext; scalar_t__ pcb_eip; scalar_t__ pcb_ebp; scalar_t__ pcb_edi; int /*<<< orphan*/  pcb_cr3; int /*<<< orphan*/  tf_eflags; scalar_t__ tf_eax; struct mdproc* pcb_save; int /*<<< orphan*/  pcb_gs; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 struct thread* FUNC0 (int /*<<< orphan*/ ) ; 
 int PF_FORK ; 
 int /*<<< orphan*/  PSL_C ; 
 int PSL_I ; 
 int PSL_KERNEL ; 
 int /*<<< orphan*/  PSL_T ; 
 int RFMEM ; 
 int RFPROC ; 
 scalar_t__ VM86_STACK_SPACE ; 
 int /*<<< orphan*/  FUNC1 (struct trapframe*,struct trapframe*,int) ; 
 int cpu_max_ext_state_size ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  dt_lock ; 
 scalar_t__ fork_return ; 
 scalar_t__ fork_trampoline ; 
 int /*<<< orphan*/  fpcurthread ; 
 struct trapframe* FUNC4 (struct thread*) ; 
 struct trapframe* FUNC5 (struct trapframe*) ; 
 struct trapframe* FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct trapframe*) ; 
 scalar_t__ setidt_disp ; 
 void* FUNC14 (struct trapframe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct proc_ldt*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

void
FUNC17(struct thread *td1, struct proc *p2, struct thread *td2, int flags)
{
	struct proc *p1;
	struct pcb *pcb2;
	struct mdproc *mdp2;

	p1 = td1->td_proc;
	if ((flags & RFPROC) == 0) {
		if ((flags & RFMEM) == 0) {
			/* unshare user LDT */
			struct mdproc *mdp1 = &p1->p_md;
			struct proc_ldt *pldt, *pldt1;

			FUNC7(&dt_lock);
			if ((pldt1 = mdp1->md_ldt) != NULL &&
			    pldt1->ldt_refcnt > 1) {
				pldt = FUNC14(mdp1, pldt1->ldt_len);
				if (pldt == NULL)
					FUNC10("could not copy LDT");
				mdp1->md_ldt = pldt;
				FUNC13(mdp1);
				FUNC15(pldt1);
			} else
				FUNC8(&dt_lock);
		}
		return;
	}

	/* Ensure that td1's pcb is up to date. */
	if (td1 == curthread)
		td1->td_pcb->pcb_gs = FUNC12();
	FUNC2();
	if (FUNC0(fpcurthread) == td1)
		FUNC9(td1->td_pcb->pcb_save);
	FUNC3();

	/* Point the pcb to the top of the stack */
	pcb2 = FUNC4(td2);
	td2->td_pcb = pcb2;

	/* Copy td1's pcb */
	FUNC1(td1->td_pcb, pcb2, sizeof(*pcb2));

	/* Properly initialize pcb_save */
	pcb2->pcb_save = FUNC5(pcb2);
	FUNC1(FUNC6(td1), FUNC5(pcb2),
	    cpu_max_ext_state_size);

	/* Point mdproc and then copy over td1's contents */
	mdp2 = &p2->p_md;
	FUNC1(&p1->p_md, mdp2, sizeof(*mdp2));

	/*
	 * Create a new fresh stack for the new process.
	 * Copy the trap frame for the return to user mode as if from a
	 * syscall.  This copies most of the user mode register values.
	 * The -VM86_STACK_SPACE (-16) is so we can expand the trapframe
	 * if we go to vm86.
	 */
	td2->td_frame = (struct trapframe *)((caddr_t)td2->td_pcb -
	    VM86_STACK_SPACE) - 1;
	FUNC1(td1->td_frame, td2->td_frame, sizeof(struct trapframe));

	td2->td_frame->tf_eax = 0;		/* Child returns zero */
	td2->td_frame->tf_eflags &= ~PSL_C;	/* success */
	td2->td_frame->tf_edx = 1;

	/*
	 * If the parent process has the trap bit set (i.e. a debugger had
	 * single stepped the process to the system call), we need to clear
	 * the trap flag from the new frame unless the debugger had set PF_FORK
	 * on the parent.  Otherwise, the child will receive a (likely
	 * unexpected) SIGTRAP when it executes the first instruction after
	 * returning  to userland.
	 */
	if ((p1->p_pfsflags & PF_FORK) == 0)
		td2->td_frame->tf_eflags &= ~PSL_T;

	/*
	 * Set registers for trampoline to user mode.  Leave space for the
	 * return address on stack.  These are the kernel mode register values.
	 */
	pcb2->pcb_cr3 = FUNC11(FUNC16(p2->p_vmspace));
	pcb2->pcb_edi = 0;
	pcb2->pcb_esi = (int)fork_return;	/* fork_trampoline argument */
	pcb2->pcb_ebp = 0;
	pcb2->pcb_esp = (int)td2->td_frame - sizeof(void *);
	pcb2->pcb_ebx = (int)td2;		/* fork_trampoline argument */
	pcb2->pcb_eip = (int)fork_trampoline + setidt_disp;
	/*-
	 * pcb2->pcb_dr*:	cloned above.
	 * pcb2->pcb_savefpu:	cloned above.
	 * pcb2->pcb_flags:	cloned above.
	 * pcb2->pcb_onfault:	cloned above (always NULL here?).
	 * pcb2->pcb_gs:	cloned above.
	 * pcb2->pcb_ext:	cleared below.
	 */

	/*
	 * XXX don't copy the i/o pages.  this should probably be fixed.
	 */
	pcb2->pcb_ext = 0;

	/* Copy the LDT, if necessary. */
	FUNC7(&dt_lock);
	if (mdp2->md_ldt != NULL) {
		if (flags & RFMEM) {
			mdp2->md_ldt->ldt_refcnt++;
		} else {
			mdp2->md_ldt = FUNC14(mdp2,
			    mdp2->md_ldt->ldt_len);
			if (mdp2->md_ldt == NULL)
				FUNC10("could not copy LDT");
		}
	}
	FUNC8(&dt_lock);

	/* Setup to release spin count in fork_exit(). */
	td2->td_md.md_spinlock_count = 1;
	td2->td_md.md_saved_flags = PSL_KERNEL | PSL_I;

	/*
	 * Now, cpu_switch() can schedule the new process.
	 * pcb_esp is loaded pointing to the cpu_switch() stack frame
	 * containing the return address when exiting cpu_switch.
	 * This will normally be to fork_trampoline(), which will have
	 * %ebx loaded with the new proc's pointer.  fork_trampoline()
	 * will set up a stack to call fork_return(p, frame); to complete
	 * the return to user-mode.
	 */
}
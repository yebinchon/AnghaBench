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
typedef  int uint64_t ;
struct trapframe {int tf_scause; int tf_sepc; int /*<<< orphan*/  tf_stval; int /*<<< orphan*/  tf_sstatus; } ;
struct thread {struct pcb* td_pcb; struct trapframe* td_frame; } ;
struct pcb {int pcb_fpflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct thread*,int,struct trapframe*) ; 
#define  EXCP_BREAKPOINT 136 
#define  EXCP_FAULT_FETCH 135 
#define  EXCP_FAULT_LOAD 134 
#define  EXCP_FAULT_STORE 133 
#define  EXCP_ILLEGAL_INSTRUCTION 132 
#define  EXCP_INST_PAGE_FAULT 131 
 int EXCP_INTR ; 
#define  EXCP_LOAD_PAGE_FAULT 130 
 int EXCP_MASK ; 
#define  EXCP_STORE_PAGE_FAULT 129 
#define  EXCP_USER_ECALL 128 
 int /*<<< orphan*/  ILL_ILLTRP ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  KTR_TRAP ; 
 int PCB_FP_STARTED ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  SSTATUS_FS_CLEAN ; 
 int /*<<< orphan*/  SSTATUS_FS_MASK ; 
 int SSTATUS_SIE ; 
 int SSTATUS_SPP ; 
 int /*<<< orphan*/  TRAP_BRKPT ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (struct trapframe*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC8 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*,struct trapframe*) ; 

void
FUNC10(struct trapframe *frame)
{
	uint64_t exception;
	struct thread *td;
	uint64_t sstatus;
	struct pcb *pcb;

	td = curthread;
	td->td_frame = frame;
	pcb = td->td_pcb;

	/* Ensure we came from usermode, interrupts disabled */
	__asm __volatile("csrr %0, sstatus" : "=&r" (sstatus));
	FUNC1((sstatus & (SSTATUS_SPP | SSTATUS_SIE)) == 0,
			("We must came from U mode with interrupts disabled"));

	exception = (frame->tf_scause & EXCP_MASK);
	if (frame->tf_scause & EXCP_INTR) {
		/* Interrupt */
		FUNC7(frame);
		return;
	}

	FUNC0(KTR_TRAP, "do_trap_user: curthread: %p, sepc: %lx, frame: %p",
	    curthread, frame->tf_sepc, frame);

	switch(exception) {
	case EXCP_FAULT_LOAD:
	case EXCP_FAULT_STORE:
	case EXCP_FAULT_FETCH:
	case EXCP_STORE_PAGE_FAULT:
	case EXCP_LOAD_PAGE_FAULT:
	case EXCP_INST_PAGE_FAULT:
		FUNC3(frame, 1);
		break;
	case EXCP_USER_ECALL:
		frame->tf_sepc += 4;	/* Next instruction */
		FUNC8(frame);
		break;
	case EXCP_ILLEGAL_INSTRUCTION:
#ifdef FPE
		if ((pcb->pcb_fpflags & PCB_FP_STARTED) == 0) {
			/*
			 * May be a FPE trap. Enable FPE usage
			 * for this thread and try again.
			 */
			fpe_state_clear();
			frame->tf_sstatus &= ~SSTATUS_FS_MASK;
			frame->tf_sstatus |= SSTATUS_FS_CLEAN;
			pcb->pcb_fpflags |= PCB_FP_STARTED;
			break;
		}
#endif
		FUNC2(td, SIGILL, ILL_ILLTRP, (void *)frame->tf_sepc);
		FUNC9(td, frame);
		break;
	case EXCP_BREAKPOINT:
		FUNC2(td, SIGTRAP, TRAP_BRKPT, (void *)frame->tf_sepc);
		FUNC9(td, frame);
		break;
	default:
		FUNC4(frame);
		FUNC6("Unknown userland exception %x, trap value %lx\n",
		    exception, frame->tf_stval);
	}
}
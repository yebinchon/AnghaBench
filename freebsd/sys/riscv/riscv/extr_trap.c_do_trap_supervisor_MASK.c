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
struct trapframe {int tf_scause; int /*<<< orphan*/  tf_stval; int /*<<< orphan*/  tf_sepc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct trapframe*) ; 
#define  EXCP_BREAKPOINT 134 
#define  EXCP_FAULT_FETCH 133 
#define  EXCP_FAULT_LOAD 132 
#define  EXCP_FAULT_STORE 131 
#define  EXCP_ILLEGAL_INSTRUCTION 130 
 int EXCP_INTR ; 
#define  EXCP_LOAD_PAGE_FAULT 129 
 int EXCP_MASK ; 
#define  EXCP_STORE_PAGE_FAULT 128 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  KTR_TRAP ; 
 int SSTATUS_SIE ; 
 int SSTATUS_SPP ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC2 (struct trapframe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trapframe*) ; 
 scalar_t__ FUNC4 (struct trapframe*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct trapframe*) ; 
 scalar_t__ FUNC9 (struct trapframe*,int) ; 

void
FUNC10(struct trapframe *frame)
{
	uint64_t exception;
	uint64_t sstatus;

	/* Ensure we came from supervisor mode, interrupts disabled */
	__asm __volatile("csrr %0, sstatus" : "=&r" (sstatus));
	FUNC1((sstatus & (SSTATUS_SPP | SSTATUS_SIE)) == SSTATUS_SPP,
			("We must came from S mode with interrupts disabled"));

	exception = (frame->tf_scause & EXCP_MASK);
	if (frame->tf_scause & EXCP_INTR) {
		/* Interrupt */
		FUNC8(frame);
		return;
	}

#ifdef KDTRACE_HOOKS
	if (dtrace_trap_func != NULL && (*dtrace_trap_func)(frame, exception))
		return;
#endif

	FUNC0(KTR_TRAP, "do_trap_supervisor: curthread: %p, sepc: %lx, frame: %p",
	    curthread, frame->tf_sepc, frame);

	switch(exception) {
	case EXCP_FAULT_LOAD:
	case EXCP_FAULT_STORE:
	case EXCP_FAULT_FETCH:
	case EXCP_STORE_PAGE_FAULT:
	case EXCP_LOAD_PAGE_FAULT:
		FUNC2(frame, 0);
		break;
	case EXCP_BREAKPOINT:
#ifdef KDTRACE_HOOKS
		if (dtrace_invop_jump_addr != 0) {
			dtrace_invop_jump_addr(frame);
			break;
		}
#endif
#ifdef KDB
		kdb_trap(exception, 0, frame);
#else
		FUNC5(frame);
		FUNC7("No debugger in kernel.\n");
#endif
		break;
	case EXCP_ILLEGAL_INSTRUCTION:
		FUNC5(frame);
		FUNC7("Illegal instruction at 0x%016lx\n", frame->tf_sepc);
		break;
	default:
		FUNC5(frame);
		FUNC7("Unknown kernel exception %x trap value %lx\n",
		    exception, frame->tf_stval);
	}
}
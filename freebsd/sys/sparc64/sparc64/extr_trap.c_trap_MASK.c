#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_long ;
struct trapframe {size_t tf_type; int tf_tstate; void* tf_tpc; void* tf_sfar; int tf_sfsr; int /*<<< orphan*/  tf_tnpc; } ;
struct thread {scalar_t__ td_cowgen; struct trapframe* td_frame; scalar_t__ td_pticks; struct proc* td_proc; } ;
struct proc {scalar_t__ p_cowgen; TYPE_1__* p_sysent; } ;
typedef  void* register_t ;
struct TYPE_6__ {int ksi_signo; int ksi_code; int ksi_trapno; void* ksi_addr; } ;
typedef  TYPE_2__ ksiginfo_t ;
struct TYPE_5__ {int (* sv_transtrap ) (int,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ASI_AIUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct thread*,size_t,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  KDB_WHY_TRAPSIG ; 
 int /*<<< orphan*/  KTR_TRAP ; 
 int MMU_SFSR_FV ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int SIGTRAP ; 
 int /*<<< orphan*/  FUNC5 (struct trapframe*) ; 
 scalar_t__ FUNC6 (struct trapframe*) ; 
 int TRAP_BRKPT ; 
 int TSTATE_PRIV ; 
#define  T_BREAKPOINT 141 
#define  T_CORRECTED_ECC_ERROR 140 
#define  T_DATA_ERROR 139 
#define  T_DATA_EXCEPTION 138 
#define  T_DATA_MISS 137 
#define  T_DATA_PROTECTION 136 
#define  T_FILL 135 
#define  T_FILL_RET 134 
#define  T_INSTRUCTION_MISS 133 
 size_t T_KERNEL ; 
#define  T_KSTACK_FAULT 132 
 size_t T_MAX ; 
#define  T_MEM_ADDRESS_NOT_ALIGNED 131 
#define  T_PA_WATCHPOINT 130 
#define  T_SPILL 129 
#define  T_VA_WATCHPOINT 128 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  copy_fault ; 
 int /*<<< orphan*/  copy_nofault_begin ; 
 int /*<<< orphan*/  copy_nofault_end ; 
 struct thread* curthread ; 
 int FUNC10 (struct trapframe*) ; 
 scalar_t__ debugger_on_signal ; 
 int /*<<< orphan*/  fas_fault ; 
 int /*<<< orphan*/  fas_nofault_begin ; 
 int /*<<< orphan*/  fas_nofault_end ; 
 int /*<<< orphan*/  fs_fault ; 
 int /*<<< orphan*/  fs_nofault_begin ; 
 int /*<<< orphan*/  fs_nofault_end ; 
 int /*<<< orphan*/  impl ; 
 scalar_t__ kdb_active ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (size_t,int /*<<< orphan*/ ,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (char*,size_t) ; 
 int /*<<< orphan*/  pil ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (struct thread*,struct trapframe*,int) ; 
 int FUNC18 (struct thread*) ; 
 int FUNC19 (int,size_t) ; 
 int /*<<< orphan*/  FUNC20 (struct thread*) ; 
 int FUNC21 () ; 
 size_t* trap_msg ; 
 int /*<<< orphan*/  FUNC22 (struct thread*,struct trapframe*,int*,int*) ; 
 int* trap_sig ; 
 int /*<<< orphan*/  FUNC23 (struct thread*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (struct thread*,struct trapframe*) ; 
 int /*<<< orphan*/  v_trap ; 

void
FUNC25(struct trapframe *tf)
{
	struct thread *td;
	struct proc *p;
	int error;
	int sig, ucode;
	register_t addr;
	ksiginfo_t ksi;

	td = curthread;

	FUNC1(KTR_TRAP, "trap: %p type=%s (%s) pil=%#lx", td,
	    trap_msg[tf->tf_type & ~T_KERNEL],
	    (FUNC6(tf) ? "user" : "kernel"), FUNC16(pil));

	FUNC7(v_trap);

	if ((tf->tf_tstate & TSTATE_PRIV) == 0) {
		FUNC2(td != NULL, ("trap: curthread NULL"));
		FUNC2(td->td_proc != NULL, ("trap: curproc NULL"));

		p = td->td_proc;
		td->td_pticks = 0;
		td->td_frame = tf;
		addr = tf->tf_tpc;
		ucode = (int)tf->tf_type; /* XXX not POSIX */
		if (td->td_cowgen != p->p_cowgen)
			FUNC20(td);

		switch (tf->tf_type) {
		case T_DATA_MISS:
		case T_DATA_PROTECTION:
			addr = tf->tf_sfar;
			/* FALLTHROUGH */
		case T_INSTRUCTION_MISS:
			if (FUNC22(td, tf, &sig, &ucode))
				sig = 0;
			break;
		case T_FILL:
			sig = FUNC17(td, tf, 2);
			break;
		case T_FILL_RET:
			sig = FUNC17(td, tf, 1);
			break;
		case T_SPILL:
			sig = FUNC18(td);
			break;
		case T_CORRECTED_ECC_ERROR:
			sig = FUNC21();
			break;
		case T_BREAKPOINT:
			sig = SIGTRAP;
			ucode = TRAP_BRKPT;
			break;
		default:
			if (tf->tf_type > T_MAX)
				FUNC15("trap: bad trap type %#lx (user)",
				    tf->tf_type);
			else if (trap_sig[tf->tf_type] == -1)
				FUNC15("trap: %s (user)",
				    trap_msg[tf->tf_type]);
			sig = trap_sig[tf->tf_type];
			break;
		}

		if (sig != 0) {
			/* Translate fault for emulators. */
			if (p->p_sysent->sv_transtrap != NULL) {
				sig = p->p_sysent->sv_transtrap(sig,
				    tf->tf_type);
			}
			if (debugger_on_signal &&
			    (sig == 4 || sig == 10 || sig == 11))
				FUNC11(KDB_WHY_TRAPSIG, "trapsig");
			FUNC14(&ksi);
			ksi.ksi_signo = sig;
			ksi.ksi_code = ucode;
			ksi.ksi_addr = (void *)addr;
			ksi.ksi_trapno = (int)tf->tf_type;
			FUNC23(td, &ksi);
		}

		FUNC24(td, tf);
	} else {
		FUNC2((tf->tf_type & T_KERNEL) != 0,
		    ("trap: kernel trap isn't"));

		if (kdb_active) {
			FUNC12();
			return;
		}

		switch (tf->tf_type & ~T_KERNEL) {
		case T_BREAKPOINT:
		case T_KSTACK_FAULT:
			error = (FUNC13(tf->tf_type, 0, tf) == 0);
			FUNC5(tf);
			break;
#ifdef notyet
		case T_PA_WATCHPOINT:
		case T_VA_WATCHPOINT:
			error = db_watch_trap(tf);
			break;
#endif
		case T_DATA_MISS:
		case T_DATA_PROTECTION:
		case T_INSTRUCTION_MISS:
			error = !FUNC22(td, tf, &sig, &ucode);
			break;
		case T_DATA_EXCEPTION:
		case T_MEM_ADDRESS_NOT_ALIGNED:
			if ((tf->tf_sfsr & MMU_SFSR_FV) != 0 &&
			    FUNC3(tf->tf_sfsr) == ASI_AIUP) {
				if (tf->tf_tpc >= (u_long)copy_nofault_begin &&
				    tf->tf_tpc <= (u_long)copy_nofault_end) {
					tf->tf_tpc = (u_long)copy_fault;
					tf->tf_tnpc = tf->tf_tpc + 4;
					error = 0;
					break;
				}
				if (tf->tf_tpc >= (u_long)fs_nofault_begin &&
				    tf->tf_tpc <= (u_long)fs_nofault_end) {
					tf->tf_tpc = (u_long)fs_fault;
					tf->tf_tnpc = tf->tf_tpc + 4;
					error = 0;
					break;
				}
			}
			error = 1;
			break;
		case T_DATA_ERROR:
			/*
			 * Handle PCI poke/peek as per UltraSPARC IIi
			 * User's Manual 16.2.1, modulo checking the
			 * TPC as USIII CPUs generate a precise trap
			 * instead of a special deferred one.
			 */
			if (tf->tf_tpc > (u_long)fas_nofault_begin &&
			    tf->tf_tpc < (u_long)fas_nofault_end) {
				FUNC9();
				FUNC8(FUNC4(impl));
				tf->tf_tpc = (u_long)fas_fault;
				tf->tf_tnpc = tf->tf_tpc + 4;
				error = 0;
				break;
			}
			error = 1;
			break;
		case T_CORRECTED_ECC_ERROR:
			error = FUNC21();
			break;
		default:
			error = 1;
			break;
		}

		if (error != 0) {
			tf->tf_type &= ~T_KERNEL;
			if (tf->tf_type > T_MAX)
				FUNC15("trap: bad trap type %#lx (kernel)",
				    tf->tf_type);
			FUNC15("trap: %s (kernel)", trap_msg[tf->tf_type]);
		}
	}
	FUNC0(KTR_TRAP, "trap: td=%p return", td);
}
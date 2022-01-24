#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u_int ;
struct TYPE_18__ {int dbcr0; } ;
struct TYPE_19__ {TYPE_7__ booke; } ;
struct trapframe {int exc; int srr1; int srr0; int dar; TYPE_8__ cpu; } ;
struct thread {scalar_t__ td_cowgen; TYPE_6__* td_pcb; int /*<<< orphan*/ * td_ucred; struct trapframe* td_frame; scalar_t__ td_pticks; int /*<<< orphan*/  td_name; struct proc* td_proc; } ;
struct proc {scalar_t__ p_cowgen; TYPE_3__* p_sysent; TYPE_4__* p_vmspace; } ;
typedef  int register_t ;
struct TYPE_20__ {int ksi_signo; int ksi_code; int ksi_trapno; void* ksi_addr; } ;
typedef  TYPE_9__ ksiginfo_t ;
struct TYPE_12__ {int /*<<< orphan*/  usr_vsid; } ;
struct TYPE_13__ {TYPE_1__ aim; } ;
struct TYPE_16__ {int /*<<< orphan*/  vscr; } ;
struct TYPE_17__ {int pcb_flags; TYPE_2__ pcb_cpu; TYPE_5__ pcb_vec; } ;
struct TYPE_15__ {int /*<<< orphan*/  vm_pmap; } ;
struct TYPE_14__ {int (* sv_transtrap ) (int,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ALTIVEC_VSCR_NJ ; 
 int BUS_ADRALN ; 
 int BUS_OBJERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int DBCR0_IC ; 
 int DBCR0_IDM ; 
#define  EXC_ALI 152 
#define  EXC_DEBUG 151 
#define  EXC_DSE 150 
#define  EXC_DSI 149 
 int EXC_DTRACE ; 
#define  EXC_FAC 148 
#define  EXC_FPU 147 
#define  EXC_HEA 146 
#define  EXC_ISE 145 
#define  EXC_ISI 144 
#define  EXC_MCHK 143 
#define  EXC_PGM 142 
 int EXC_PGM_ILLEGAL ; 
 int EXC_PGM_PRIV ; 
#define  EXC_RUNMODETRC 141 
#define  EXC_SC 140 
#define  EXC_SOFT_PATCH 139 
#define  EXC_TRC 138 
#define  EXC_VEC 137 
#define  EXC_VECAST_E 136 
#define  EXC_VECAST_G4 135 
#define  EXC_VECAST_G5 134 
#define  EXC_VSX 133 
 int FPE_FLTINV ; 
 int FSCR_DSCR ; 
 int FSCR_EBB ; 
#define  FSCR_IC_DSCR 132 
#define  FSCR_IC_EBB 131 
#define  FSCR_IC_HTM 130 
#define  FSCR_IC_LM 129 
 int FSCR_IC_MASK ; 
#define  FSCR_IC_TAR 128 
 int FSCR_LM ; 
 int FSCR_TAR ; 
 int ILL_ILLOPC ; 
 int ILL_PRVOPC ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  KTR_TRAP ; 
 int PCB_CDSCR ; 
 int PCB_CFSCR ; 
 int PCB_FPU ; 
 int PCB_VEC ; 
 int PCB_VSX ; 
 int PSL_DE ; 
 int PSL_PR ; 
 int PSL_SE ; 
 int SEGMENT_MASK ; 
 int SEGV_MAPERR ; 
 int SIGBUS ; 
 int SIGFPE ; 
 int SIGILL ; 
 int SIGSEGV ; 
 int SIGTRAP ; 
 int /*<<< orphan*/  SPR_BESCR ; 
 int /*<<< orphan*/  SPR_DBSR ; 
 int /*<<< orphan*/  SPR_DSCR ; 
 int /*<<< orphan*/  SPR_EBBHR ; 
 int /*<<< orphan*/  SPR_EBBRR ; 
 int /*<<< orphan*/  SPR_FSCR ; 
 int /*<<< orphan*/  SPR_LMRR ; 
 int /*<<< orphan*/  SPR_LMSER ; 
 int /*<<< orphan*/  SPR_TAR ; 
 int TRAP_BRKPT ; 
 int TRAP_TRACE ; 
 int USER_ADDR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ cold ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC4 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC5 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC6 (struct trapframe*) ; 
 scalar_t__ FUNC7 (struct trapframe*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC11 (struct trapframe*) ; 
 int FUNC12 (void const*) ; 
 int /*<<< orphan*/  FUNC13 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ kdb_active ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_9__*) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int FUNC20 (struct trapframe*,struct thread*) ; 
 int /*<<< orphan*/  FUNC21 (struct thread*) ; 
 int /*<<< orphan*/  FUNC22 (struct thread*) ; 
 scalar_t__ FUNC23 (struct trapframe*,int) ; 
 int /*<<< orphan*/  FUNC24 (struct trapframe*) ; 
 int FUNC25 (int,int) ; 
 int /*<<< orphan*/  FUNC26 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC27 (struct thread*) ; 
 int /*<<< orphan*/  FUNC28 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC29 (struct trapframe*,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC30 (int) ; 
 int /*<<< orphan*/  FUNC31 (struct thread*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC32 (struct thread*,struct trapframe*) ; 
 int /*<<< orphan*/  v_trap ; 

void
FUNC33(struct trapframe *frame)
{
	struct thread	*td;
	struct proc	*p;
#ifdef KDTRACE_HOOKS
	uint32_t inst;
#endif
	int		sig, type, user;
	u_int		ucode;
	ksiginfo_t	ksi;
	register_t 	fscr;

	FUNC3(v_trap);

#ifdef KDB
	if (kdb_active) {
		kdb_reenter();
		return;
	}
#endif

	td = curthread;
	p = td->td_proc;

	type = ucode = frame->exc;
	sig = 0;
	user = frame->srr1 & PSL_PR;

	FUNC1(KTR_TRAP, "trap: %s type=%s (%s)", td->td_name,
	    FUNC30(type), user ? "user" : "kernel");

#ifdef KDTRACE_HOOKS
	/*
	 * A trap can occur while DTrace executes a probe. Before
	 * executing the probe, DTrace blocks re-scheduling and sets
	 * a flag in its per-cpu flags to indicate that it doesn't
	 * want to fault. On returning from the probe, the no-fault
	 * flag is cleared and finally re-scheduling is enabled.
	 *
	 * If the DTrace kernel module has registered a trap handler,
	 * call it and if it returns non-zero, assume that it has
	 * handled the trap and modified the trap frame so that this
	 * function can return normally.
	 */
	if (dtrace_trap_func != NULL && (*dtrace_trap_func)(frame, type) != 0)
		return;
#endif

	if (user) {
		td->td_pticks = 0;
		td->td_frame = frame;
		if (td->td_cowgen != p->p_cowgen)
			FUNC27(td);

		/* User Mode Traps */
		switch (type) {
		case EXC_RUNMODETRC:
		case EXC_TRC:
			frame->srr1 &= ~PSL_SE;
			sig = SIGTRAP;
			ucode = TRAP_TRACE;
			break;

#if defined(__powerpc64__) && defined(AIM)
		case EXC_ISE:
		case EXC_DSE:
			if (handle_user_slb_spill(&p->p_vmspace->vm_pmap,
			    (type == EXC_ISE) ? frame->srr0 : frame->dar) != 0){
				sig = SIGSEGV;
				ucode = SEGV_MAPERR;
			}
			break;
#endif
		case EXC_DSI:
		case EXC_ISI:
			if (FUNC29(frame, true, &sig, &ucode))
				sig = 0;
			break;

		case EXC_SC:
			FUNC26(frame);
			break;

		case EXC_FPU:
			FUNC2((td->td_pcb->pcb_flags & PCB_FPU) != PCB_FPU,
			    ("FPU already enabled for thread"));
			FUNC8(td);
			break;

		case EXC_VEC:
			FUNC2((td->td_pcb->pcb_flags & PCB_VEC) != PCB_VEC,
			    ("Altivec already enabled for thread"));
			FUNC9(td);
			break;

		case EXC_VSX:
			FUNC2((td->td_pcb->pcb_flags & PCB_VSX) != PCB_VSX,
			    ("VSX already enabled for thread"));
			if (!(td->td_pcb->pcb_flags & PCB_VEC))
				FUNC9(td);
			if (td->td_pcb->pcb_flags & PCB_FPU)
				FUNC21(td);
			td->td_pcb->pcb_flags |= PCB_VSX;
			FUNC8(td);
			break;

		case EXC_FAC:
			fscr = FUNC17(SPR_FSCR);
			switch (fscr & FSCR_IC_MASK) {
			case FSCR_IC_HTM:
				FUNC0(KTR_TRAP,
				    "Hardware Transactional Memory subsystem disabled");
				sig = SIGILL;
				ucode =	ILL_ILLOPC;
				break;
			case FSCR_IC_DSCR:
				td->td_pcb->pcb_flags |= PCB_CFSCR | PCB_CDSCR;
				fscr |= FSCR_DSCR;
				FUNC18(SPR_DSCR, 0);
				break;
			case FSCR_IC_EBB:
				td->td_pcb->pcb_flags |= PCB_CFSCR;
				fscr |= FSCR_EBB;
				FUNC18(SPR_EBBHR, 0);
				FUNC18(SPR_EBBRR, 0);
				FUNC18(SPR_BESCR, 0);
				break;
			case FSCR_IC_TAR:
				td->td_pcb->pcb_flags |= PCB_CFSCR;
				fscr |= FSCR_TAR;
				FUNC18(SPR_TAR, 0);
				break;
			case FSCR_IC_LM:
				td->td_pcb->pcb_flags |= PCB_CFSCR;
				fscr |= FSCR_LM;
				FUNC18(SPR_LMRR, 0);
				FUNC18(SPR_LMSER, 0);
				break;
			default:
				sig = SIGILL;
				ucode =	ILL_ILLOPC;
			}
			FUNC18(SPR_FSCR, fscr & ~FSCR_IC_MASK);
			break;
		case EXC_HEA:
			sig = SIGILL;
			ucode =	ILL_ILLOPC;
			break;

		case EXC_VECAST_E:
		case EXC_VECAST_G4:
		case EXC_VECAST_G5:
			/*
			 * We get a VPU assist exception for IEEE mode
			 * vector operations on denormalized floats.
			 * Emulating this is a giant pain, so for now,
			 * just switch off IEEE mode and treat them as
			 * zero.
			 */

			FUNC22(td);
			td->td_pcb->pcb_vec.vscr |= ALTIVEC_VSCR_NJ;
			FUNC9(td);
			break;

		case EXC_ALI:
			if (FUNC10(td, frame) != 0) {
				sig = SIGBUS;
				ucode = BUS_ADRALN;
			}
			else
				frame->srr0 += 4;
			break;

		case EXC_DEBUG:	/* Single stepping */
			FUNC18(SPR_DBSR, FUNC17(SPR_DBSR));
			frame->srr1 &= ~PSL_DE;
			frame->cpu.booke.dbcr0 &= ~(DBCR0_IDM | DBCR0_IC);
			sig = SIGTRAP;
			ucode = TRAP_TRACE;
			break;

		case EXC_PGM:
			/* Identify the trap reason */
			if (FUNC11(frame)) {
#ifdef KDTRACE_HOOKS
				inst = fuword32((const void *)frame->srr0);
				if (inst == 0x0FFFDDDD &&
				    dtrace_pid_probe_ptr != NULL) {
					(*dtrace_pid_probe_ptr)(frame);
					break;
				}
#endif
 				sig = SIGTRAP;
				ucode = TRAP_BRKPT;
			} else {
				sig = FUNC20(frame, td);
				if (sig == SIGILL) {
					if (frame->srr1 & EXC_PGM_PRIV)
						ucode = ILL_PRVOPC;
					else if (frame->srr1 & EXC_PGM_ILLEGAL)
						ucode = ILL_ILLOPC;
				} else if (sig == SIGFPE)
					ucode = FPE_FLTINV;	/* Punt for now, invalid operation. */
			}
			break;

		case EXC_MCHK:
			/*
			 * Note that this may not be recoverable for the user
			 * process, depending on the type of machine check,
			 * but it at least prevents the kernel from dying.
			 */
			sig = SIGBUS;
			ucode = BUS_OBJERR;
			break;

#if defined(__powerpc64__) && defined(AIM)
		case EXC_SOFT_PATCH:
			/*
			 * Point to the instruction that generated the exception to execute it again,
			 * and normalize the register values.
			 */
			frame->srr0 -= 4;
			normalize_inputs();
			break;
#endif

		default:
			FUNC28(frame);
		}
	} else {
		/* Kernel Mode Traps */

		FUNC2(cold || td->td_ucred != NULL,
		    ("kernel trap doesn't have ucred"));
		switch (type) {
		case EXC_PGM:
#ifdef KDTRACE_HOOKS
			if (frame_is_trap_inst(frame)) {
				if (*(uint32_t *)frame->srr0 == EXC_DTRACE) {
					if (dtrace_invop_jump_addr != NULL) {
						dtrace_invop_jump_addr(frame);
						return;
					}
				}
			}
#endif
#ifdef KDB
			if (db_trap_glue(frame))
				return;
#endif
			break;
#if defined(__powerpc64__) && defined(AIM)
		case EXC_DSE:
			if (td->td_pcb->pcb_cpu.aim.usr_vsid != 0 &&
			    (frame->dar & SEGMENT_MASK) == USER_ADDR) {
				__asm __volatile ("slbmte %0, %1" ::
					"r"(td->td_pcb->pcb_cpu.aim.usr_vsid),
					"r"(USER_SLB_SLBE));
				return;
			}
			break;
#endif
		case EXC_DSI:
			if (FUNC29(frame, false, NULL, NULL))
 				return;
			break;
		case EXC_MCHK:
			if (FUNC13(frame))
 				return;
			break;
		default:
			break;
		}
		FUNC28(frame);
	}

	if (sig != 0) {
		if (p->p_sysent->sv_transtrap != NULL)
			sig = (p->p_sysent->sv_transtrap)(sig, type);
		FUNC16(&ksi);
		ksi.ksi_signo = sig;
		ksi.ksi_code = (int) ucode; /* XXX, not POSIX */
		ksi.ksi_addr = (void *)frame->srr0;
		ksi.ksi_trapno = type;
		FUNC31(td, &ksi);
	}

	FUNC32(td, frame);
}
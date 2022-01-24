#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct syscall_args {int /*<<< orphan*/  code; } ;
struct thread {int td_pflags; int td_dbgflags; int /*<<< orphan*/ * td_retval; int /*<<< orphan*/  td_errno; int /*<<< orphan*/  td_frame; struct syscall_args td_sa; struct proc* td_proc; } ;
struct proc {int p_flag2; int p_flag; int p_ptevents; } ;
struct TYPE_4__ {int /*<<< orphan*/  ksi_code; int /*<<< orphan*/  ksi_errno; int /*<<< orphan*/  ksi_signo; } ;
typedef  TYPE_1__ ksiginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  ECAPMODE ; 
 int /*<<< orphan*/  ENOTCAPABLE ; 
 scalar_t__ FUNC0 (struct thread*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_SYSRET ; 
 int P2_TRAPCAP ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int PTRACE_SCX ; 
 int P_TRACED ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_SCX ; 
 int TDB_EXEC ; 
 int TDB_FORK ; 
 int TDB_SCX ; 
 int TDP_FORKING ; 
 int TDP_RFPPWAIT ; 
 int /*<<< orphan*/  TRAP_CAP ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ trap_enotcap ; 
 int /*<<< orphan*/  FUNC11 (struct thread*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct thread*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC13(struct thread *td)
{
	struct proc *p;
	struct syscall_args *sa;
	ksiginfo_t ksi;
	int traced;

	FUNC1((td->td_pflags & TDP_FORKING) == 0,
	    ("fork() did not clear TDP_FORKING upon completion"));

	p = td->td_proc;
	sa = &td->td_sa;
	if ((trap_enotcap || (p->p_flag2 & P2_TRAPCAP) != 0) &&
	    FUNC0(td)) {
		if (td->td_errno == ENOTCAPABLE || td->td_errno == ECAPMODE) {
			FUNC8(&ksi);
			ksi.ksi_signo = SIGTRAP;
			ksi.ksi_errno = td->td_errno;
			ksi.ksi_code = TRAP_CAP;
			FUNC11(td, &ksi);
		}
	}

	/*
	 * Handle reschedule and other end-of-syscall issues
	 */
	FUNC12(td, td->td_frame);

#ifdef KTRACE
	if (KTRPOINT(td, KTR_SYSRET)) {
		ktrsysret(sa->code, td->td_errno, td->td_retval[0]);
	}
#endif

	if (p->p_flag & P_TRACED) {
		traced = 1;
		FUNC3(p);
		td->td_dbgflags |= TDB_SCX;
		FUNC4(p);
	} else
		traced = 0;
	/*
	 * This works because errno is findable through the
	 * register set.  If we ever support an emulation where this
	 * is not the case, this code will need to be revisited.
	 */
	FUNC5(p, S_SCX, sa->code);
	if (traced || (td->td_dbgflags & (TDB_EXEC | TDB_FORK)) != 0) {
		FUNC3(p);
		/*
		 * If tracing the execed process, trap to the debugger
		 * so that breakpoints can be set before the program
		 * executes.  If debugger requested tracing of syscall
		 * returns, do it now too.
		 */
		if (traced &&
		    ((td->td_dbgflags & (TDB_FORK | TDB_EXEC)) != 0 ||
		    (p->p_ptevents & PTRACE_SCX) != 0))
			FUNC10(td, SIGTRAP, NULL);
		td->td_dbgflags &= ~(TDB_SCX | TDB_EXEC | TDB_FORK);
		FUNC4(p);
	}

	if (FUNC6(td->td_pflags & TDP_RFPPWAIT))
		FUNC7(td);
}
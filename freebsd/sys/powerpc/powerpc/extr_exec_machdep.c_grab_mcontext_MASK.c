#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct trapframe {int dummy; } ;
struct thread {int /*<<< orphan*/ * td_frame; struct pcb* td_pcb; } ;
struct TYPE_9__ {int /*<<< orphan*/ * vr; int /*<<< orphan*/  vrsave; int /*<<< orphan*/  vscr; } ;
struct TYPE_8__ {TYPE_1__* fpr; int /*<<< orphan*/  fpscr; } ;
struct pcb {int pcb_flags; TYPE_3__ pcb_vec; TYPE_2__ pcb_fpu; } ;
struct TYPE_10__ {int mc_len; int /*<<< orphan*/ * mc_avec; int /*<<< orphan*/  mc_vrsave; int /*<<< orphan*/  mc_vscr; int /*<<< orphan*/  mc_flags; int /*<<< orphan*/ * mc_vsxfpreg; int /*<<< orphan*/ * mc_fpreg; int /*<<< orphan*/  mc_fpscr; scalar_t__* mc_gpr; int /*<<< orphan*/  mc_frame; int /*<<< orphan*/  mc_vers; } ;
typedef  TYPE_4__ mcontext_t ;
struct TYPE_7__ {int /*<<< orphan*/ * vsr; int /*<<< orphan*/  fpr; } ;

/* Variables and functions */
 int GET_MC_CLEAR_RET ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PCB_FPREGS ; 
 int PCB_FPU ; 
 int PCB_VEC ; 
 int PCB_VSX ; 
 int /*<<< orphan*/  _MC_AV_VALID ; 
 int /*<<< orphan*/  _MC_FP_VALID ; 
 int /*<<< orphan*/  _MC_VERSION ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 

__attribute__((used)) static int
FUNC7(struct thread *td, mcontext_t *mcp, int flags)
{
	struct pcb *pcb;
	int i;

	pcb = td->td_pcb;

	FUNC4(mcp, 0, sizeof(mcontext_t));

	mcp->mc_vers = _MC_VERSION;
	mcp->mc_flags = 0;
	FUNC3(&mcp->mc_frame, td->td_frame, sizeof(struct trapframe));
	if (flags & GET_MC_CLEAR_RET) {
		mcp->mc_gpr[3] = 0;
		mcp->mc_gpr[4] = 0;
	}

	/*
	 * This assumes that floating-point context is *not* lazy,
	 * so if the thread has used FP there would have been a
	 * FP-unavailable exception that would have set things up
	 * correctly.
	 */
	if (pcb->pcb_flags & PCB_FPREGS) {
		if (pcb->pcb_flags & PCB_FPU) {
			FUNC0(td == curthread,
				("get_mcontext: fp save not curthread"));
			FUNC1();
			FUNC5(td);
			FUNC2();
		}
		mcp->mc_flags |= _MC_FP_VALID;
		FUNC3(&mcp->mc_fpscr, &pcb->pcb_fpu.fpscr, sizeof(double));
		for (i = 0; i < 32; i++)
			FUNC3(&mcp->mc_fpreg[i], &pcb->pcb_fpu.fpr[i].fpr,
			    sizeof(double));
	}

	if (pcb->pcb_flags & PCB_VSX) {
		for (i = 0; i < 32; i++)
			FUNC3(&mcp->mc_vsxfpreg[i],
			    &pcb->pcb_fpu.fpr[i].vsr[2], sizeof(double));
	}

	/*
	 * Repeat for Altivec context
	 */

	if (pcb->pcb_flags & PCB_VEC) {
		FUNC0(td == curthread,
			("get_mcontext: fp save not curthread"));
		FUNC1();
		FUNC6(td);
		FUNC2();
		mcp->mc_flags |= _MC_AV_VALID;
		mcp->mc_vscr  = pcb->pcb_vec.vscr;
		mcp->mc_vrsave =  pcb->pcb_vec.vrsave;
		FUNC3(mcp->mc_avec, pcb->pcb_vec.vr, sizeof(mcp->mc_avec));
	}

	mcp->mc_len = sizeof(*mcp);

	return (0);
}
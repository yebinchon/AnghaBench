#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  double uint32_t ;
struct TYPE_10__ {int /*<<< orphan*/  dsisr; } ;
struct TYPE_9__ {int esr; } ;
struct TYPE_11__ {TYPE_3__ aim; TYPE_2__ booke; } ;
struct trapframe {scalar_t__ dar; TYPE_4__ cpu; scalar_t__ srr0; int /*<<< orphan*/ * fixreg; } ;
struct thread {TYPE_7__* td_pcb; } ;
typedef  int /*<<< orphan*/  inst ;
struct TYPE_13__ {TYPE_5__* fpr; } ;
struct TYPE_8__ {int /*<<< orphan*/ ** vr; } ;
struct TYPE_14__ {TYPE_6__ pcb_fpu; TYPE_1__ pcb_vec; } ;
struct TYPE_12__ {double fpr; } ;

/* Variables and functions */
 int ESR_SPE ; 
 int ESR_ST ; 
 int FUNC0 (double) ; 
#define  EXC_ALI_LFD 129 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  EXC_ALI_STFD 128 
 struct thread* FUNC3 (struct thread*) ; 
 scalar_t__ FUNC4 (void*,double*,int) ; 
 scalar_t__ FUNC5 (double*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 
 struct thread* vecthread ; 

__attribute__((used)) static int
FUNC10(struct thread *td, struct trapframe *frame)
{
	struct thread	*fputhread;
#ifdef BOOKE
	uint32_t	inst;
#endif
	int		indicator, reg;
	double		*fpr;

#ifdef __SPE__
	indicator = (frame->cpu.booke.esr & (ESR_ST|ESR_SPE));
	if (indicator & ESR_SPE) {
		if (copyin((void *)frame->srr0, &inst, sizeof(inst)) != 0)
			return (-1);
		reg = EXC_ALI_INST_RST(inst);
		fpr = (double *)td->td_pcb->pcb_vec.vr[reg];
		fputhread = PCPU_GET(vecthread);

		/* Juggle the SPE to ensure that we've initialized
		 * the registers, and that their current state is in
		 * the PCB.
		 */
		if (fputhread != td) {
			if (fputhread)
				save_vec(fputhread);
			enable_vec(td);
		}
		save_vec(td);

		if (!(indicator & ESR_ST)) {
			if (copyin((void *)frame->dar, fpr,
			    sizeof(double)) != 0)
				return (-1);
			frame->fixreg[reg] = td->td_pcb->pcb_vec.vr[reg][1];
			enable_vec(td);
		} else {
			td->td_pcb->pcb_vec.vr[reg][1] = frame->fixreg[reg];
			if (copyout(fpr, (void *)frame->dar,
			    sizeof(double)) != 0)
				return (-1);
		}
		return (0);
	}
#else
#ifdef BOOKE
	indicator = (frame->cpu.booke.esr & ESR_ST) ? EXC_ALI_STFD : EXC_ALI_LFD;
#else
	indicator = FUNC1(frame->cpu.aim.dsisr);
#endif

	switch (indicator) {
	case EXC_ALI_LFD:
	case EXC_ALI_STFD:
#ifdef BOOKE
		if (copyin((void *)frame->srr0, &inst, sizeof(inst)) != 0)
			return (-1);
		reg = EXC_ALI_INST_RST(inst);
#else
		reg = FUNC2(frame->cpu.aim.dsisr);
#endif
		fpr = &td->td_pcb->pcb_fpu.fpr[reg].fpr;
		fputhread = FUNC3(fputhread);

		/* Juggle the FPU to ensure that we've initialized
		 * the FPRs, and that their current state is in
		 * the PCB.
		 */
		if (fputhread != td) {
			if (fputhread)
				FUNC8(fputhread);
			FUNC6(td);
		}
		FUNC8(td);

		if (indicator == EXC_ALI_LFD) {
			if (FUNC4((void *)frame->dar, fpr,
			    sizeof(double)) != 0)
				return (-1);
			FUNC6(td);
		} else {
			if (FUNC5(fpr, (void *)frame->dar,
			    sizeof(double)) != 0)
				return (-1);
		}
		return (0);
		break;
	}
#endif

	return (-1);
}
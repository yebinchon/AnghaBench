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
typedef  int uint32_t ;
struct trapframe {scalar_t__ srr0; int /*<<< orphan*/ * fixreg; } ;
struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_flags; scalar_t__ pcb_lastill; int /*<<< orphan*/  pcb_fpu; } ;

/* Variables and functions */
 int PCB_FPREGS ; 
 int PCB_FPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SIGFPE ; 
 int SIGILL ; 
 int XFX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  curpmap ; 
 int FUNC2 (int,int,struct trapframe*) ; 
 int FUNC3 (int,int,struct trapframe*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 
 int FUNC5 (struct trapframe*,int /*<<< orphan*/ *) ; 
 int FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct thread*) ; 

int
FUNC11(struct trapframe *frame, struct thread *td)
{
	struct pcb *pcb;
	uint32_t instr;
	int reg, sig;
	int rs, spr;

	instr = FUNC6((void *)frame->srr0);
	sig = SIGILL;

	if ((instr & 0xfc1fffff) == 0x7c1f42a6) {	/* mfpvr */
		reg = (instr & ~0xfc1fffff) >> 21;
		frame->fixreg[reg] = FUNC7();
		frame->srr0 += 4;
		return (0);
	} else if ((instr & XFX) == 0x7c0002a6) {	/* mfspr */
		rs = (instr &  0x3e00000) >> 21;
		spr = (instr & 0x1ff800) >> 16;
		return FUNC2(spr, rs, frame);
	} else if ((instr & XFX) == 0x7c0003a6) {	/* mtspr */
		rs = (instr &  0x3e00000) >> 21;
		spr = (instr & 0x1ff800) >> 16;
		return FUNC3(spr, rs, frame);
	} else if ((instr & 0xfc000ffe) == 0x7c0004ac) {	/* various sync */
		FUNC9(); /* Do a heavy-weight sync */
		frame->srr0 += 4;
		return (0);
	}

	pcb = td->td_pcb;
#ifdef FPU_EMU
	if (!(pcb->pcb_flags & PCB_FPREGS)) {
		bzero(&pcb->pcb_fpu, sizeof(pcb->pcb_fpu));
		pcb->pcb_flags |= PCB_FPREGS;
	} else if (pcb->pcb_flags & PCB_FPU)
		save_fpu(td);
	sig = fpu_emulate(frame, &pcb->pcb_fpu);
	if ((sig == 0 || sig == SIGFPE) && pcb->pcb_flags & PCB_FPU)
		enable_fpu(td);
#endif
	if (sig == SIGILL) {
		if (pcb->pcb_lastill != frame->srr0) {
			/* Allow a second chance, in case of cache sync issues. */
			sig = 0;
			FUNC8(FUNC0(curpmap), frame->srr0, 4);
			pcb->pcb_lastill = frame->srr0;
		}
	}

	return (sig);
}
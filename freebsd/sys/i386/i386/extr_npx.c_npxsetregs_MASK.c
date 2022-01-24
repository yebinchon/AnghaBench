#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  en_mxcsr; } ;
struct TYPE_4__ {TYPE_1__ sv_env; } ;
union savefpu {TYPE_2__ sv_xmm; } ;
struct thread {struct pcb* td_pcb; } ;
struct pcb {int pcb_flags; } ;

/* Variables and functions */
 int ENXIO ; 
 int PCB_NPXINITDONE ; 
 int PCB_NPXUSERINITDONE ; 
 scalar_t__ FUNC0 (struct pcb*) ; 
 struct thread* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (union savefpu*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ cpu_fxsr ; 
 int /*<<< orphan*/  cpu_mxcsr_mask ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  fpcurthread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  hw_float ; 
 int FUNC8 (struct thread*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 

int
FUNC10(struct thread *td, union savefpu *addr, char *xfpustate,
	size_t xfpustate_size)
{
	struct pcb *pcb;
	int error;

	if (!hw_float)
		return (ENXIO);

	if (cpu_fxsr)
		addr->sv_xmm.sv_env.en_mxcsr &= cpu_mxcsr_mask;
	pcb = td->td_pcb;
	error = 0;
	FUNC3();
	if (td == FUNC1(fpcurthread) && FUNC0(pcb)) {
		error = FUNC8(td, xfpustate, xfpustate_size);
		if (error == 0) {
			if (!cpu_fxsr)
				FUNC5();	/* As in npxdrop(). */
			FUNC2(addr, FUNC7(td), sizeof(*addr));
			FUNC6(FUNC7(td));
			pcb->pcb_flags |= PCB_NPXUSERINITDONE | PCB_NPXINITDONE;
		}
	} else {
		error = FUNC8(td, xfpustate, xfpustate_size);
		if (error == 0) {
			FUNC2(addr, FUNC7(td), sizeof(*addr));
			FUNC9(td);
		}
	}
	FUNC4();
	return (error);
}
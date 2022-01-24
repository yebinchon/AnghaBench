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
struct thread {struct pcb* td_pcb; } ;
struct pcb {scalar_t__ pcb_dr0; scalar_t__ pcb_dr1; scalar_t__ pcb_dr2; scalar_t__ pcb_dr3; scalar_t__ pcb_dr6; scalar_t__ pcb_dr7; int /*<<< orphan*/  pcb_flags; } ;
struct dbreg {scalar_t__* dr; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int FUNC2 (scalar_t__,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  PCB_DBREGS ; 
 scalar_t__ VM_MAXUSER_ADDRESS ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

int
FUNC9(struct thread *td, struct dbreg *dbregs)
{
	struct pcb *pcb;
	int i;

	if (td == NULL) {
		FUNC3(dbregs->dr[0]);
		FUNC4(dbregs->dr[1]);
		FUNC5(dbregs->dr[2]);
		FUNC6(dbregs->dr[3]);
		FUNC7(dbregs->dr[6]);
		FUNC8(dbregs->dr[7]);
	} else {
		/*
		 * Don't let an illegal value for dr7 get set.	Specifically,
		 * check for undefined settings.  Setting these bit patterns
		 * result in undefined behaviour and can lead to an unexpected
		 * TRCTRAP.
		 */
		for (i = 0; i < 4; i++) {
			if (FUNC0(dbregs->dr[7], i) == 0x02)
				return (EINVAL);
			if (FUNC2(dbregs->dr[7], i) == 0x02)
				return (EINVAL);
		}
		
		pcb = td->td_pcb;
		
		/*
		 * Don't let a process set a breakpoint that is not within the
		 * process's address space.  If a process could do this, it
		 * could halt the system by setting a breakpoint in the kernel
		 * (if ddb was enabled).  Thus, we need to check to make sure
		 * that no breakpoints are being enabled for addresses outside
		 * process's address space.
		 *
		 * XXX - what about when the watched area of the user's
		 * address space is written into from within the kernel
		 * ... wouldn't that still cause a breakpoint to be generated
		 * from within kernel mode?
		 */

		if (FUNC1(dbregs->dr[7], 0)) {
			/* dr0 is enabled */
			if (dbregs->dr[0] >= VM_MAXUSER_ADDRESS)
				return (EINVAL);
		}
			
		if (FUNC1(dbregs->dr[7], 1)) {
			/* dr1 is enabled */
			if (dbregs->dr[1] >= VM_MAXUSER_ADDRESS)
				return (EINVAL);
		}
			
		if (FUNC1(dbregs->dr[7], 2)) {
			/* dr2 is enabled */
			if (dbregs->dr[2] >= VM_MAXUSER_ADDRESS)
				return (EINVAL);
		}
			
		if (FUNC1(dbregs->dr[7], 3)) {
			/* dr3 is enabled */
			if (dbregs->dr[3] >= VM_MAXUSER_ADDRESS)
				return (EINVAL);
		}

		pcb->pcb_dr0 = dbregs->dr[0];
		pcb->pcb_dr1 = dbregs->dr[1];
		pcb->pcb_dr2 = dbregs->dr[2];
		pcb->pcb_dr3 = dbregs->dr[3];
		pcb->pcb_dr6 = dbregs->dr[6];
		pcb->pcb_dr7 = dbregs->dr[7];

		pcb->pcb_flags |= PCB_DBREGS;
	}

	return (0);
}
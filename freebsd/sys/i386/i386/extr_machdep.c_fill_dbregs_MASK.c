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
struct pcb {int /*<<< orphan*/  pcb_dr7; int /*<<< orphan*/  pcb_dr6; int /*<<< orphan*/  pcb_dr3; int /*<<< orphan*/  pcb_dr2; int /*<<< orphan*/  pcb_dr1; int /*<<< orphan*/  pcb_dr0; } ;
struct dbreg {int /*<<< orphan*/ * dr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int
FUNC6(struct thread *td, struct dbreg *dbregs)
{
	struct pcb *pcb;

	if (td == NULL) {
		dbregs->dr[0] = FUNC0();
		dbregs->dr[1] = FUNC1();
		dbregs->dr[2] = FUNC2();
		dbregs->dr[3] = FUNC3();
		dbregs->dr[6] = FUNC4();
		dbregs->dr[7] = FUNC5();
	} else {
		pcb = td->td_pcb;
		dbregs->dr[0] = pcb->pcb_dr0;
		dbregs->dr[1] = pcb->pcb_dr1;
		dbregs->dr[2] = pcb->pcb_dr2;
		dbregs->dr[3] = pcb->pcb_dr3;
		dbregs->dr[6] = pcb->pcb_dr6;
		dbregs->dr[7] = pcb->pcb_dr7;
	}
	dbregs->dr[4] = 0;
	dbregs->dr[5] = 0;
	return (0);
}
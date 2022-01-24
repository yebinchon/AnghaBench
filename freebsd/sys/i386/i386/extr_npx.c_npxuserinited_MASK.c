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
struct pcb {int /*<<< orphan*/  pcb_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*) ; 
 int /*<<< orphan*/  PCB_NPXINITDONE ; 
 int /*<<< orphan*/  PCB_NPXUSERINITDONE ; 
 scalar_t__ FUNC1 (struct pcb*) ; 

void
FUNC2(struct thread *td)
{
	struct pcb *pcb;

	FUNC0(td);
	pcb = td->td_pcb;
	if (FUNC1(pcb))
		pcb->pcb_flags |= PCB_NPXINITDONE;
	pcb->pcb_flags |= PCB_NPXUSERINITDONE;
}
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
struct pcb {int /*<<< orphan*/ * pcb_ext; } ;

/* Variables and functions */
 scalar_t__ IOPAGES ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC2(struct thread *td)
{
	struct pcb *pcb;

	pcb = td->td_pcb; 
	if (pcb->pcb_ext != NULL) {
		/* if (pcb->pcb_ext->ext_refcount-- == 1) ?? */
		/*
		 * XXX do we need to move the TSS off the allocated pages
		 * before freeing them?  (not done here)
		 */
		FUNC1(pcb->pcb_ext, FUNC0(IOPAGES + 1));
		pcb->pcb_ext = NULL;
	}
}
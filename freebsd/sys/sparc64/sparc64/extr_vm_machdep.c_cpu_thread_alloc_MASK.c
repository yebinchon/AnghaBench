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
struct trapframe {int dummy; } ;
struct thread {int td_kstack; int td_kstack_pages; struct pcb* td_pcb; struct trapframe* td_frame; } ;
struct pcb {scalar_t__ pcb_nsaved; } ;

/* Variables and functions */
 int PAGE_SIZE ; 

void
FUNC0(struct thread *td)
{
	struct pcb *pcb;

	pcb = (struct pcb *)((td->td_kstack + td->td_kstack_pages * PAGE_SIZE -
	    sizeof(struct pcb)) & ~0x3fUL);
	pcb->pcb_nsaved = 0;
	td->td_frame = (struct trapframe *)pcb - 1;
	td->td_pcb = pcb;
}
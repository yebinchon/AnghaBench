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
struct thread {TYPE_1__* td_frame; struct pcb* td_pcb; } ;
struct TYPE_4__ {int /*<<< orphan*/ ** vr; } ;
struct pcb {TYPE_2__ pcb_vec; } ;
struct TYPE_3__ {int /*<<< orphan*/ * fixreg; } ;

/* Variables and functions */
 struct thread* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  vecthread ; 

void
FUNC2(struct thread *td)
{
	struct thread *vtd;
	struct pcb *pcb;
	int i;

	vtd = FUNC0(vecthread);
	if (td == vtd) {
		FUNC1(td);
	}

	pcb = td->td_pcb;

	for (i = 0; i < 32; i++) {
		pcb->pcb_vec.vr[i][1] =
		    td->td_frame ? td->td_frame->fixreg[i] : 0;
	}
}
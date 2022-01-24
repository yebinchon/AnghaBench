#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_3__* td_pcb; TYPE_2__* td_proc; } ;
struct TYPE_6__ {int /*<<< orphan*/  pcb_gs; } ;
struct TYPE_4__ {scalar_t__ md_ldt; } ;
struct TYPE_5__ {TYPE_1__ p_md; } ;

/* Variables and functions */
 int /*<<< orphan*/  _udatasel ; 
 int /*<<< orphan*/  dt_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

void
FUNC4(struct thread *td)
{

	/*
	 * If this process has a custom LDT, release it.  Reset pc->pcb_gs
	 * and %gs before we free it in case they refer to an LDT entry.
	 */
	FUNC1(&dt_lock);
	if (td->td_proc->p_md.md_ldt) {
		td->td_pcb->pcb_gs = _udatasel;
		FUNC0(_udatasel);
		FUNC3(td);
	} else
		FUNC2(&dt_lock);
}
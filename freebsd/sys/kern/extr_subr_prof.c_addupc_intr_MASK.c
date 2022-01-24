#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uintfptr_t ;
typedef  scalar_t__ u_int ;
struct uprof {scalar_t__ pr_off; scalar_t__ pr_size; } ;
struct thread {int /*<<< orphan*/  td_flags; int /*<<< orphan*/  td_pflags; scalar_t__ td_profil_ticks; scalar_t__ td_profil_addr; TYPE_2__* td_proc; } ;
struct TYPE_5__ {TYPE_1__* p_stats; } ;
struct TYPE_4__ {struct uprof p_prof; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,struct uprof*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  TDF_ASTPENDING ; 
 int /*<<< orphan*/  TDP_OWEUPC ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 

void
FUNC5(struct thread *td, uintfptr_t pc, u_int ticks)
{
	struct uprof *prof;

	if (ticks == 0)
		return;
	prof = &td->td_proc->p_stats->p_prof;
	FUNC1(td->td_proc);
	if (pc < prof->pr_off || FUNC0(pc, prof) >= prof->pr_size) {
		FUNC2(td->td_proc);
		return;			/* out of range; ignore */
	}

	FUNC2(td->td_proc);
	td->td_profil_addr = pc;
	td->td_profil_ticks = ticks;
	td->td_pflags |= TDP_OWEUPC;
	FUNC3(td);
	td->td_flags |= TDF_ASTPENDING;
	FUNC4(td);
}
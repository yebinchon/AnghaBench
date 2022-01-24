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
struct thread {int td_priority; int /*<<< orphan*/  td_pri_class; int /*<<< orphan*/  td_flags; int /*<<< orphan*/  td_slptick; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PRI_TIMESHARE ; 
 int PSOCK ; 
 int /*<<< orphan*/  TDF_CANSWAP ; 
 scalar_t__ FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int) ; 
 int static_boost ; 
 int /*<<< orphan*/  ticks ; 

void
FUNC4(struct thread *td, int prio)
{

	FUNC2(td, MA_OWNED);

	td->td_slptick = ticks;
	if (FUNC1(td) || prio >= PSOCK)
		td->td_flags |= TDF_CANSWAP;
	if (FUNC0(td->td_pri_class) != PRI_TIMESHARE)
		return;
	if (static_boost == 1 && prio)
		FUNC3(td, prio);
	else if (static_boost && td->td_priority > static_boost)
		FUNC3(td, static_boost);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/  td_flags; int /*<<< orphan*/  td_pri_class; int /*<<< orphan*/  td_slptick; } ;
struct TYPE_2__ {scalar_t__ ts_slptime; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PRI_TIMESHARE ; 
 int PSOCK ; 
 int /*<<< orphan*/  TDF_CANSWAP ; 
 scalar_t__ FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int) ; 
 TYPE_1__* FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  ticks ; 

void
FUNC5(struct thread *td, int pri)
{

	FUNC2(td, MA_OWNED);
	td->td_slptick = ticks;
	FUNC4(td)->ts_slptime = 0;
	if (pri != 0 && FUNC0(td->td_pri_class) == PRI_TIMESHARE)
		FUNC3(td, pri);
	if (FUNC1(td) || pri >= PSOCK)
		td->td_flags |= TDF_CANSWAP;
}
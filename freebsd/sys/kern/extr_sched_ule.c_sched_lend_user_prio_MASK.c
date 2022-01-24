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
typedef  int /*<<< orphan*/  u_char ;
struct thread {scalar_t__ td_user_pri; scalar_t__ td_priority; int /*<<< orphan*/  td_flags; int /*<<< orphan*/  td_base_user_pri; int /*<<< orphan*/  td_lend_user_pri; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  TDF_NEEDRESCHED ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,scalar_t__) ; 

void
FUNC3(struct thread *td, u_char prio)
{

	FUNC0(td, MA_OWNED);
	td->td_lend_user_pri = prio;
	td->td_user_pri = FUNC1(prio, td->td_base_user_pri);
	if (td->td_priority > td->td_user_pri)
		FUNC2(td, td->td_user_pri);
	else if (td->td_priority != td->td_user_pri)
		td->td_flags |= TDF_NEEDRESCHED;
}
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
struct yield_args {int dummy; } ;
struct thread {scalar_t__* td_retval; int /*<<< orphan*/  td_pri_class; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRI_MAX_TIMESHARE ; 
 scalar_t__ PRI_TIMESHARE ; 
 int SWT_RELINQUISH ; 
 int SW_VOL ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 

int
FUNC5(struct thread *td, struct yield_args *uap)
{

	FUNC3(td);
	if (FUNC0(td->td_pri_class) == PRI_TIMESHARE)
		FUNC2(td, PRI_MAX_TIMESHARE);
	FUNC1(SW_VOL | SWT_RELINQUISH, NULL);
	FUNC4(td);
	td->td_retval[0] = 0;
	return (0);
}
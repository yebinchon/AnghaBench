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
struct thread {int td_user_pri; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int PRI_USER ; 
 int SWT_RELINQUISH ; 
 int SW_VOL ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 

void
FUNC6(int prio)
{
	struct thread *td;

	td = curthread;
	FUNC0();
	FUNC4(td);
	if (prio == PRI_USER)
		prio = td->td_user_pri;
	if (prio >= 0)
		FUNC3(td, prio);
	FUNC2(SW_VOL | SWT_RELINQUISH, NULL);
	FUNC5(td);
	FUNC1();
}
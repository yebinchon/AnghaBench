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
struct thread {int td_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TDF_SINTR ; 
 struct thread* curthread ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 

int
FUNC5(void *wchan, int pri)
{
	struct thread *td;
	int rval;

	td = curthread;
	FUNC0(!(td->td_flags & TDF_SINTR));
	FUNC3(td);
	FUNC2(wchan, pri);
	rval = FUNC1();
	FUNC4(td);

	return (rval);
}
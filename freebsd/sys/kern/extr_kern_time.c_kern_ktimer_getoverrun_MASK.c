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
struct thread {int /*<<< orphan*/ * td_retval; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct itimer {int /*<<< orphan*/  it_overrun_last; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct itimer*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 struct itimer* FUNC3 (struct proc*,int) ; 

int
FUNC4(struct thread *td, int timer_id)
{
	struct proc *p = td->td_proc;
	struct itimer *it;
	int error ;

	FUNC1(p);
	if (timer_id < 3 ||
	    (it = FUNC3(p, timer_id)) == NULL) {
		FUNC2(p);
		error = EINVAL;
	} else {
		td->td_retval[0] = it->it_overrun_last;
		FUNC0(it);
		FUNC2(p);
		error = 0;
	}
	return (error);
}
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
struct thread {struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct itimerspec {int dummy; } ;
struct itimer {int /*<<< orphan*/  it_clockid; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct itimer*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct itimer*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct itimer*) ; 
 struct itimer* FUNC5 (struct proc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct itimer*) ; 
 int /*<<< orphan*/  timer_gettime ; 

int
FUNC7(struct thread *td, int timer_id, struct itimerspec *val)
{
	struct proc *p;
	struct itimer *it;
	int error;

	p = td->td_proc;
	FUNC2(p);
	if (timer_id < 3 || (it = FUNC5(p, timer_id)) == NULL) {
		FUNC3(p);
		error = EINVAL;
	} else {
		FUNC3(p);
		FUNC4(it);
		error = FUNC0(it->it_clockid, timer_gettime, (it, val));
		FUNC6(it);
		FUNC1(it);
	}
	return (error);
}
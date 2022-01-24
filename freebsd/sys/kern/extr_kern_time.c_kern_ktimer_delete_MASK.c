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
struct thread {struct proc* td_proc; } ;
struct proc {TYPE_1__* p_itimers; } ;
struct itimer {scalar_t__ it_usecount; int /*<<< orphan*/  it_ksi; int /*<<< orphan*/  it_clockid; int /*<<< orphan*/  it_flags; int /*<<< orphan*/  it_mtx; } ;
struct TYPE_2__ {int /*<<< orphan*/ ** its_timers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct itimer*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  ITF_DELETING ; 
 int /*<<< orphan*/  ITF_WANTED ; 
 int /*<<< orphan*/  FUNC1 (struct itimer*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PPAUSE ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 struct itimer* FUNC5 (struct proc*,int) ; 
 int /*<<< orphan*/  itimer_zone ; 
 int /*<<< orphan*/  FUNC6 (struct itimer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer_delete ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,struct itimer*) ; 

int
FUNC9(struct thread *td, int timerid)
{
	struct proc *p = td->td_proc;
	struct itimer *it;

	FUNC3(p);
	it = FUNC5(p, timerid);
	if (it == NULL) {
		FUNC4(p);
		return (EINVAL);
	}
	FUNC4(p);

	it->it_flags |= ITF_DELETING;
	while (it->it_usecount > 0) {
		it->it_flags |= ITF_WANTED;
		FUNC6(it, &it->it_mtx, PPAUSE, "itimer", 0);
	}
	it->it_flags &= ~ITF_WANTED;
	FUNC0(it->it_clockid, timer_delete, (it));
	FUNC1(it);

	FUNC3(p);
	if (FUNC2(&it->it_ksi))
		FUNC7(&it->it_ksi);
	p->p_itimers->its_timers[timerid] = NULL;
	FUNC4(p);
	FUNC8(itimer_zone, it);
	return (0);
}
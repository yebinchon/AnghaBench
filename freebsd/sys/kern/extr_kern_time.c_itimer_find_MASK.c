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
struct proc {TYPE_1__* p_itimers; } ;
struct itimer {int it_flags; } ;
struct TYPE_2__ {struct itimer** its_timers; } ;

/* Variables and functions */
 int ITF_DELETING ; 
 int /*<<< orphan*/  FUNC0 (struct itimer*) ; 
 int /*<<< orphan*/  FUNC1 (struct itimer*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int TIMER_MAX ; 

__attribute__((used)) static struct itimer *
FUNC3(struct proc *p, int timerid)
{
	struct itimer *it;

	FUNC2(p, MA_OWNED);
	if ((p->p_itimers == NULL) ||
	    (timerid < 0) || (timerid >= TIMER_MAX) ||
	    (it = p->p_itimers->its_timers[timerid]) == NULL) {
		return (NULL);
	}
	FUNC0(it);
	if ((it->it_flags & ITF_DELETING) != 0) {
		FUNC1(it);
		it = NULL;
	}
	return (it);
}
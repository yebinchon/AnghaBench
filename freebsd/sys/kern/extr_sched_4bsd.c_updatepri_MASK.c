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
struct thread {int dummy; } ;
struct td_sched {int ts_slptime; unsigned int ts_estcpu; } ;
typedef  int fixpt_t ;
struct TYPE_2__ {int /*<<< orphan*/ * ldavg; } ;

/* Variables and functions */
 TYPE_1__ averunnable ; 
 unsigned int FUNC0 (int,unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct td_sched* FUNC2 (struct thread*) ; 

__attribute__((used)) static void
FUNC3(struct thread *td)
{
	struct td_sched *ts;
	fixpt_t loadfac;
	unsigned int newcpu;

	ts = FUNC2(td);
	loadfac = FUNC1(averunnable.ldavg[0]);
	if (ts->ts_slptime > 5 * loadfac)
		ts->ts_estcpu = 0;
	else {
		newcpu = ts->ts_estcpu;
		ts->ts_slptime--;	/* was incremented in schedcpu() */
		while (newcpu && --ts->ts_slptime)
			newcpu = FUNC0(loadfac, newcpu);
		ts->ts_estcpu = newcpu;
	}
}
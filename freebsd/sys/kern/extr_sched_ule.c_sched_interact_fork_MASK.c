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
struct thread {int dummy; } ;
struct td_sched {int ts_runtime; int ts_slptime; } ;

/* Variables and functions */
 int SCHED_SLP_RUN_FORK ; 
 struct td_sched* FUNC0 (struct thread*) ; 

__attribute__((used)) static void
FUNC1(struct thread *td)
{
	struct td_sched *ts;
	int ratio;
	int sum;

	ts = FUNC0(td);
	sum = ts->ts_runtime + ts->ts_slptime;
	if (sum > SCHED_SLP_RUN_FORK) {
		ratio = sum / SCHED_SLP_RUN_FORK;
		ts->ts_runtime /= ratio;
		ts->ts_slptime /= ratio;
	}
}
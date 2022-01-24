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
struct td_sched {int /*<<< orphan*/  ts_pctcpu; } ;
typedef  int /*<<< orphan*/  fixpt_t ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ) ; 
 struct td_sched* FUNC1 (struct thread*) ; 

fixpt_t
FUNC2(struct thread *td)
{
	struct td_sched *ts;

	FUNC0(td, MA_OWNED);
	ts = FUNC1(td);
	return (ts->ts_pctcpu);
}
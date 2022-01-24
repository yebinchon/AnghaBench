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
struct thread {int /*<<< orphan*/  td_priority; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  KTR_SCHED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 

void
FUNC5(struct proc *p, struct thread *td)
{

	FUNC1(KTR_SCHED, "thread", FUNC4(td), "proc exit",
	    "prio:%d", td->td_priority);

	FUNC2(p, MA_OWNED);
	FUNC3(FUNC0(p), td);
}
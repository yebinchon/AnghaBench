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
struct thread {int /*<<< orphan*/  td_name; int /*<<< orphan*/  td_tid; struct proc* td_proc; } ;
struct proc {int /*<<< orphan*/  p_flag; int /*<<< orphan*/  p_pid; } ;
struct pmclog_threadcreate {int dummy; } ;
struct pmc_owner {int dummy; } ;

/* Variables and functions */
 scalar_t__ MAXCOMLEN ; 
 int /*<<< orphan*/  FUNC0 (struct pmc_owner*) ; 
 int /*<<< orphan*/  FUNC1 (struct pmc_owner*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pmc_owner*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  THR_CREATE ; 

void
FUNC5(struct pmc_owner *po, struct thread *td, int sync)
{
	struct proc *p;

	p = td->td_proc;
	if (sync) {
		FUNC4(po, THR_CREATE, sizeof(struct pmclog_threadcreate));
		FUNC2(td->td_tid);
		FUNC2(p->p_pid);
		FUNC2(p->p_flag);
		FUNC2(0);
		FUNC3(td->td_name, MAXCOMLEN+1);
		FUNC1(po);
	} else {
		FUNC4(po, THR_CREATE, sizeof(struct pmclog_threadcreate));
		FUNC2(td->td_tid);
		FUNC2(p->p_pid);
		FUNC2(p->p_flag);
		FUNC2(0);
		FUNC3(td->td_name, MAXCOMLEN+1);
		FUNC0(po);
	}
}
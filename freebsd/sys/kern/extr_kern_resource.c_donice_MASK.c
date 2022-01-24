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
struct proc {int p_nice; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PRIO_MAX ; 
 int PRIO_MIN ; 
 int /*<<< orphan*/  PRIV_SCHED_SETPRIORITY ; 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct thread*,struct proc*) ; 
 scalar_t__ FUNC2 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*,int) ; 

__attribute__((used)) static int
FUNC4(struct thread *td, struct proc *p, int n)
{
	int error;

	FUNC0(p, MA_OWNED);
	if ((error = FUNC1(td, p)))
		return (error);
	if (n > PRIO_MAX)
		n = PRIO_MAX;
	if (n < PRIO_MIN)
		n = PRIO_MIN;
	if (n < p->p_nice && FUNC2(td, PRIV_SCHED_SETPRIORITY) != 0)
		return (EACCES);
	FUNC3(p, n);
	return (0);
}
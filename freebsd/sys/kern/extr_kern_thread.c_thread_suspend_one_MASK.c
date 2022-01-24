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
struct thread {int /*<<< orphan*/  td_flags; struct proc* td_proc; } ;
struct proc {int /*<<< orphan*/  p_suspcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TDF_NEEDSUSPCHK ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct thread *td)
{
	struct proc *p;

	p = td->td_proc;
	FUNC1(p, MA_OWNED);
	FUNC4(td, MA_OWNED);
	FUNC0(!FUNC2(td), ("already suspended"));
	p->p_suspcount++;
	td->td_flags &= ~TDF_NEEDSUSPCHK;
	FUNC3(td);
	FUNC5(td, 0);
}
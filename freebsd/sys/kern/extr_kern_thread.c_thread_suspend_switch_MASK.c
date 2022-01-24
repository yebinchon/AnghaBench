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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 int /*<<< orphan*/  FUNC8 (struct proc*) ; 
 int SWT_SUSPEND ; 
 int SW_VOL ; 
 int /*<<< orphan*/  TDF_NEEDSUSPCHK ; 
 int /*<<< orphan*/  FUNC9 (struct thread*) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct thread*) ; 
 int /*<<< orphan*/  FUNC14 (struct proc*) ; 
 int /*<<< orphan*/  FUNC15 (struct thread*) ; 

void
FUNC16(struct thread *td, struct proc *p)
{

	FUNC1(!FUNC9(td), ("already suspended"));
	FUNC4(p, MA_OWNED);
	FUNC6(p, MA_OWNED);
	/*
	 * We implement thread_suspend_one in stages here to avoid
	 * dropping the proc lock while the thread lock is owned.
	 */
	if (p == td->td_proc) {
		FUNC14(p);
		p->p_suspcount++;
	}
	FUNC8(p);
	FUNC13(td);
	td->td_flags &= ~TDF_NEEDSUSPCHK;
	FUNC10(td);
	FUNC12(td, 0);
	FUNC7(p);
	FUNC0();
	FUNC11(SW_VOL | SWT_SUSPEND, NULL);
	FUNC15(td);
	FUNC2();
	FUNC3(p);
	FUNC5(p);
}
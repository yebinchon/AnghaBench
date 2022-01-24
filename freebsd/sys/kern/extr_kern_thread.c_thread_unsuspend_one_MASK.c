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
struct thread {int td_flags; struct proc* td_proc; } ;
struct proc {int /*<<< orphan*/  p_boundary_count; int /*<<< orphan*/  p_suspcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int TDF_ALLPROCSUSP ; 
 int TDF_BOUNDARY ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct thread*) ; 

__attribute__((used)) static int
FUNC6(struct thread *td, struct proc *p, bool boundary)
{

	FUNC4(td, MA_OWNED);
	FUNC0(FUNC3(td), ("Thread not suspended"));
	FUNC2(td);
	td->td_flags &= ~TDF_ALLPROCSUSP;
	if (td->td_proc == p) {
		FUNC1(p, MA_OWNED);
		p->p_suspcount--;
		if (boundary && (td->td_flags & TDF_BOUNDARY) != 0) {
			td->td_flags &= ~TDF_BOUNDARY;
			p->p_boundary_count--;
		}
	}
	return (FUNC5(td));
}
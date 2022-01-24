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
struct thread {TYPE_1__* td_proc; } ;
struct proc_ldt {int dummy; } ;
struct mdproc {struct proc_ldt* md_ldt; } ;
struct TYPE_2__ {struct mdproc p_md; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _default_ldt ; 
 int /*<<< orphan*/  currentldt ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  dt_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct proc_ldt*) ; 

void
FUNC5(struct thread *td)
{
	struct mdproc *mdp;
	struct proc_ldt *pldt;

	FUNC2(&dt_lock, MA_OWNED);
	mdp = &td->td_proc->p_md;
	if ((pldt = mdp->md_ldt) == NULL) {
		FUNC3(&dt_lock);
		return;
	}

	if (td == curthread) {
		FUNC1(_default_ldt);
		FUNC0(currentldt, _default_ldt);
	}

	mdp->md_ldt = NULL;
	FUNC4(pldt);
}
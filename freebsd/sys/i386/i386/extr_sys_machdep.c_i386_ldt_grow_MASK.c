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
typedef  union descriptor {int dummy; } descriptor ;
struct thread {TYPE_1__* td_proc; } ;
struct proc_ldt {int ldt_len; scalar_t__ ldt_base; int /*<<< orphan*/  ldt_sd; } ;
struct mdproc {struct proc_ldt* md_ldt; } ;
typedef  scalar_t__ caddr_t ;
struct TYPE_2__ {struct mdproc p_md; int /*<<< orphan*/  p_vmspace; } ;

/* Variables and functions */
 int ENOMEM ; 
 int MAX_LD ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  M_SUBPROC ; 
 int NLDT ; 
 scalar_t__ NULL_LDT_BASE ; 
 int /*<<< orphan*/  dt_lock ; 
 int /*<<< orphan*/  FUNC0 (struct proc_ldt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mdproc*) ; 
 int /*<<< orphan*/  set_user_ldt_rv ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct proc_ldt* FUNC7 (struct mdproc*,int) ; 

__attribute__((used)) static int
FUNC8(struct thread *td, int len) 
{
	struct mdproc *mdp;
	struct proc_ldt *new_ldt, *pldt;
	caddr_t old_ldt_base;
	int old_ldt_len;

	FUNC1(&dt_lock, MA_OWNED);

	if (len > MAX_LD)
		return (ENOMEM);
	if (len < NLDT + 1)
		len = NLDT + 1;

	mdp = &td->td_proc->p_md;
	old_ldt_base = NULL_LDT_BASE;
	old_ldt_len = 0;

	/* Allocate a user ldt. */
	if ((pldt = mdp->md_ldt) == NULL || len > pldt->ldt_len) {
		new_ldt = FUNC7(mdp, len);
		if (new_ldt == NULL)
			return (ENOMEM);
		pldt = mdp->md_ldt;

		if (pldt != NULL) {
			if (new_ldt->ldt_len <= pldt->ldt_len) {
				/*
				 * We just lost the race for allocation, so
				 * free the new object and return.
				 */
				FUNC3(&dt_lock);
				FUNC4(new_ldt->ldt_base,
				   new_ldt->ldt_len * sizeof(union descriptor));
				FUNC0(new_ldt, M_SUBPROC);
				FUNC2(&dt_lock);
				return (0);
			}

			/*
			 * We have to substitute the current LDT entry for
			 * curproc with the new one since its size grew.
			 */
			old_ldt_base = pldt->ldt_base;
			old_ldt_len = pldt->ldt_len;
			pldt->ldt_sd = new_ldt->ldt_sd;
			pldt->ldt_base = new_ldt->ldt_base;
			pldt->ldt_len = new_ldt->ldt_len;
		} else
			mdp->md_ldt = pldt = new_ldt;
#ifdef SMP
		/*
		 * Signal other cpus to reload ldt.  We need to unlock dt_lock
		 * here because other CPU will contest on it since their
		 * curthreads won't hold the lock and will block when trying
		 * to acquire it.
		 */
		mtx_unlock_spin(&dt_lock);
		smp_rendezvous(NULL, set_user_ldt_rv, NULL,
		    td->td_proc->p_vmspace);
#else
		FUNC5(&td->td_proc->p_md);
		FUNC3(&dt_lock);
#endif
		if (old_ldt_base != NULL_LDT_BASE) {
			FUNC4(old_ldt_base, old_ldt_len *
			    sizeof(union descriptor));
			FUNC0(new_ldt, M_SUBPROC);
		}
		FUNC2(&dt_lock);
	}
	return (0);
}
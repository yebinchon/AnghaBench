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
struct thread {int /*<<< orphan*/  td_name; struct proc* td_proc; } ;
struct thr_set_name_args {scalar_t__ id; int /*<<< orphan*/ * name; } ;
struct proc {int /*<<< orphan*/  p_pid; } ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  lwpid_t ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 int ESRCH ; 
 int /*<<< orphan*/  MAXCOMLEN ; 
 int /*<<< orphan*/  FUNC0 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PMC_FN_THR_CREATE_LOG ; 
 scalar_t__ FUNC1 (struct proc*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 struct thread* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(struct thread *td, struct thr_set_name_args *uap)
{
	struct proc *p;
	char name[MAXCOMLEN + 1];
	struct thread *ttd;
	int error;

	error = 0;
	name[0] = '\0';
	if (uap->name != NULL) {
		error = FUNC5(uap->name, name, sizeof(name), NULL);
		if (error == ENAMETOOLONG) {
			error = FUNC4(uap->name, name, sizeof(name) - 1);
			name[sizeof(name) - 1] = '\0';
		}
		if (error)
			return (error);
	}
	p = td->td_proc;
	ttd = FUNC8((lwpid_t)uap->id, p->p_pid);
	if (ttd == NULL)
		return (ESRCH);
	FUNC7(ttd->td_name, name);
#ifdef HWPMC_HOOKS
	if (PMC_PROC_IS_USING_PMCS(p) || PMC_SYSTEM_SAMPLING_ACTIVE())
		PMC_CALL_HOOK_UNLOCKED(ttd, PMC_FN_THR_CREATE_LOG, NULL);
#endif
#ifdef KTR
	sched_clear_tdname(ttd);
#endif
	FUNC3(p);
	return (error);
}
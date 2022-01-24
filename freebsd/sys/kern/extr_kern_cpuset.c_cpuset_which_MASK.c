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
struct thread {TYPE_1__* td_ucred; int /*<<< orphan*/  td_cpuset; struct proc* td_proc; } ;
struct proc {int dummy; } ;
struct prison {int /*<<< orphan*/  pr_mtx; struct cpuset* pr_cpuset; } ;
struct cpuset {int dummy; } ;
typedef  int id_t ;
typedef  int cpuwhich_t ;
struct TYPE_2__ {int /*<<< orphan*/  cr_prison; } ;

/* Variables and functions */
#define  CPU_WHICH_CPUSET 133 
#define  CPU_WHICH_DOMAIN 132 
#define  CPU_WHICH_IRQ 131 
#define  CPU_WHICH_JAIL 130 
#define  CPU_WHICH_PID 129 
#define  CPU_WHICH_TID 128 
 int EINVAL ; 
 int ESRCH ; 
 struct thread* FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  allprison_lock ; 
 struct cpuset* FUNC3 (int,struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpuset*) ; 
 struct cpuset* FUNC5 (int /*<<< orphan*/ ) ; 
 struct proc* curproc ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct thread*,struct proc*) ; 
 struct proc* FUNC8 (int) ; 
 struct prison* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct thread* FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct thread*) ; 
 int /*<<< orphan*/  FUNC14 (struct thread*) ; 

int
FUNC15(cpuwhich_t which, id_t id, struct proc **pp, struct thread **tdp,
    struct cpuset **setp)
{
	struct cpuset *set;
	struct thread *td;
	struct proc *p;
	int error;

	*pp = p = NULL;
	*tdp = td = NULL;
	*setp = set = NULL;
	switch (which) {
	case CPU_WHICH_PID:
		if (id == -1) {
			FUNC1(curproc);
			p = curproc;
			break;
		}
		if ((p = FUNC8(id)) == NULL)
			return (ESRCH);
		break;
	case CPU_WHICH_TID:
		if (id == -1) {
			FUNC1(curproc);
			p = curproc;
			td = curthread;
			break;
		}
		td = FUNC12(id, -1);
		if (td == NULL)
			return (ESRCH);
		p = td->td_proc;
		break;
	case CPU_WHICH_CPUSET:
		if (id == -1) {
			FUNC13(curthread);
			set = FUNC5(curthread->td_cpuset);
			FUNC14(curthread);
		} else
			set = FUNC3(id, curthread);
		if (set) {
			*setp = set;
			return (0);
		}
		return (ESRCH);
	case CPU_WHICH_JAIL:
	{
		/* Find `set' for prison with given id. */
		struct prison *pr;

		FUNC10(&allprison_lock);
		pr = FUNC9(curthread->td_ucred->cr_prison, id);
		FUNC11(&allprison_lock);
		if (pr == NULL)
			return (ESRCH);
		FUNC4(pr->pr_cpuset);
		*setp = pr->pr_cpuset;
		FUNC6(&pr->pr_mtx);
		return (0);
	}
	case CPU_WHICH_IRQ:
	case CPU_WHICH_DOMAIN:
		return (0);
	default:
		return (EINVAL);
	}
	error = FUNC7(curthread, p);
	if (error) {
		FUNC2(p);
		return (error);
	}
	if (td == NULL)
		td = FUNC0(p);
	*pp = p;
	*tdp = td;
	return (0);
}
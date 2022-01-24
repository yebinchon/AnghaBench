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
struct thread {struct proc* td_proc; } ;
struct rusage {int /*<<< orphan*/  ru_stime; int /*<<< orphan*/  ru_utime; } ;
struct proc {TYPE_1__* p_stats; } ;
struct TYPE_2__ {struct rusage p_cru; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
#define  RUSAGE_CHILDREN 130 
#define  RUSAGE_SELF 129 
#define  RUSAGE_THREAD 128 
 int /*<<< orphan*/  FUNC4 (struct proc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*,struct rusage*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,struct rusage*) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (struct thread*) ; 

int
FUNC9(struct thread *td, int who, struct rusage *rup)
{
	struct proc *p;
	int error;

	error = 0;
	p = td->td_proc;
	FUNC0(p);
	switch (who) {
	case RUSAGE_SELF:
		FUNC5(p, rup, &rup->ru_utime,
		    &rup->ru_stime);
		break;

	case RUSAGE_CHILDREN:
		*rup = p->p_stats->p_cru;
		FUNC4(p, &rup->ru_utime, &rup->ru_stime);
		break;

	case RUSAGE_THREAD:
		FUNC1(p);
		FUNC7(td);
		FUNC6(td, rup);
		FUNC8(td);
		FUNC2(p);
		break;

	default:
		error = EINVAL;
	}
	FUNC3(p);
	return (error);
}
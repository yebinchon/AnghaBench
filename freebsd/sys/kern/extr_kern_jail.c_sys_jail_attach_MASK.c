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
struct thread {TYPE_1__* td_ucred; } ;
struct prison {scalar_t__ pr_uref; int /*<<< orphan*/  pr_mtx; } ;
struct jail_attach_args {int /*<<< orphan*/  jid; } ;
struct TYPE_2__ {int /*<<< orphan*/  cr_prison; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PRIV_JAIL_ATTACH ; 
 int /*<<< orphan*/  allprison_lock ; 
 int FUNC0 (struct thread*,struct prison*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct prison* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int
FUNC7(struct thread *td, struct jail_attach_args *uap)
{
	struct prison *pr;
	int error;

	error = FUNC3(td, PRIV_JAIL_ATTACH);
	if (error)
		return (error);

	/*
	 * Start with exclusive hold on allprison_lock to ensure that a possible
	 * PR_METHOD_REMOVE call isn't concurrent with jail_set or jail_remove.
	 * But then immediately downgrade it since we don't need to stop
	 * readers.
	 */
	FUNC6(&allprison_lock);
	FUNC4(&allprison_lock);
	pr = FUNC2(td->td_ucred->cr_prison, uap->jid);
	if (pr == NULL) {
		FUNC5(&allprison_lock);
		return (EINVAL);
	}

	/*
	 * Do not allow a process to attach to a prison that is not
	 * considered to be "alive".
	 */
	if (pr->pr_uref == 0) {
		FUNC1(&pr->pr_mtx);
		FUNC5(&allprison_lock);
		return (EINVAL);
	}

	return (FUNC0(td, pr));
}
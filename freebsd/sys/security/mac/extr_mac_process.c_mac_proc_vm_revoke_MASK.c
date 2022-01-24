#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ucred {int dummy; } ;
struct thread {TYPE_2__* td_proc; } ;
struct TYPE_5__ {TYPE_1__* p_vmspace; int /*<<< orphan*/  p_ucred; } ;
struct TYPE_4__ {int /*<<< orphan*/  vm_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct ucred*) ; 
 struct ucred* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,struct ucred*,int /*<<< orphan*/ *) ; 

void
FUNC5(struct thread *td)
{
	struct ucred *cred;

	FUNC0(td->td_proc);
	cred = FUNC3(td->td_proc->p_ucred);
	FUNC1(td->td_proc);

	/* XXX freeze all other threads */
	FUNC4(td, cred,
	    &td->td_proc->p_vmspace->vm_map);
	/* XXX allow other threads to continue */

	FUNC2(cred);
}
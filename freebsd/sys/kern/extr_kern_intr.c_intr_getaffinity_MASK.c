#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_3__* td_cpuset; } ;
struct proc {int dummy; } ;
struct intr_event {int /*<<< orphan*/  ie_lock; TYPE_2__* ie_thread; int /*<<< orphan*/  ie_cpu; } ;
typedef  int /*<<< orphan*/  lwpid_t ;
typedef  int /*<<< orphan*/  cpuset_t ;
struct TYPE_6__ {int /*<<< orphan*/  cs_mask; } ;
struct TYPE_5__ {TYPE_1__* it_thread; } ;
struct TYPE_4__ {int /*<<< orphan*/  td_tid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
#define  CPU_WHICH_INTRHANDLER 130 
#define  CPU_WHICH_IRQ 129 
#define  CPU_WHICH_ITHREAD 128 
 int /*<<< orphan*/  CPU_WHICH_TID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  NOCPU ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/ * cpuset_root ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proc**,struct thread**,int /*<<< orphan*/ *) ; 
 struct intr_event* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(int irq, int mode, void *m)
{
	struct intr_event *ie;
	struct thread *td;
	struct proc *p;
	cpuset_t *mask;
	lwpid_t id;
	int error;

	mask = m;
	ie = FUNC5(irq);
	if (ie == NULL)
		return (ESRCH);

	error = 0;
	FUNC2(mask);
	switch (mode) {
	case CPU_WHICH_IRQ:
	case CPU_WHICH_INTRHANDLER:
		FUNC6(&ie->ie_lock);
		if (ie->ie_cpu == NOCPU)
			FUNC0(cpuset_root, mask);
		else
			FUNC1(ie->ie_cpu, mask);
		FUNC7(&ie->ie_lock);
		break;
	case CPU_WHICH_ITHREAD:
		FUNC6(&ie->ie_lock);
		if (ie->ie_thread == NULL) {
			FUNC7(&ie->ie_lock);
			FUNC0(cpuset_root, mask);
		} else {
			id = ie->ie_thread->it_thread->td_tid;
			FUNC7(&ie->ie_lock);
			error = FUNC4(CPU_WHICH_TID, id, &p, &td, NULL);
			if (error != 0)
				return (error);
			FUNC0(&td->td_cpuset->cs_mask, mask);
			FUNC3(p);
		}
	default:
		return (EINVAL);
	}
	return (0);
}
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
struct umtx_q {struct umtx_pi* uq_pi_blocked; } ;
struct umtx_pi {struct thread* pi_owner; } ;
struct thread {int td_lend_user_pri; struct umtx_q* td_umtxq; TYPE_1__* td_proc; } ;
struct TYPE_2__ {scalar_t__ p_magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ P_MAGIC ; 
 int FUNC1 (struct thread*) ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  umtx_lock ; 
 int /*<<< orphan*/  FUNC6 (struct umtx_pi*,struct thread*) ; 
 scalar_t__ FUNC7 (struct umtx_pi*) ; 

__attribute__((used)) static void
FUNC8(struct thread *td)
{
	struct umtx_q *uq;
	struct umtx_pi *pi;
	int pri;

	FUNC2(&umtx_lock, MA_OWNED);
	pri = FUNC1(td);
	uq = td->td_umtxq;
	pi = uq->uq_pi_blocked;
	if (pi == NULL)
		return;
	if (FUNC7(pi))
		return;

	for (;;) {
		td = pi->pi_owner;
		if (td == NULL || td == curthread)
			return;

		FUNC0(td->td_proc != NULL);
		FUNC0(td->td_proc->p_magic == P_MAGIC);

		FUNC4(td);
		if (td->td_lend_user_pri > pri)
			FUNC3(td, pri);
		else {
			FUNC5(td);
			break;
		}
		FUNC5(td);

		/*
		 * Pick up the lock that td is blocked on.
		 */
		uq = td->td_umtxq;
		pi = uq->uq_pi_blocked;
		if (pi == NULL)
			break;
		/* Resort td on the list if needed. */
		FUNC6(pi, td);
	}
}
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
struct umtx_q {scalar_t__ uq_inherited_pri; int /*<<< orphan*/  uq_pi_contested; } ;
struct umtx_pi {int /*<<< orphan*/ * pi_owner; } ;
struct thread {uintptr_t td_rb_inact; scalar_t__ td_rb_list; scalar_t__ td_rbp_list; struct umtx_q* td_umtxq; } ;

/* Variables and functions */
 scalar_t__ PRI_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct umtx_pi* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct umtx_pi*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pi_link ; 
 int /*<<< orphan*/  FUNC5 (struct thread*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*,scalar_t__,uintptr_t*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct thread*,uintptr_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  umtx_lock ; 
 int /*<<< orphan*/  FUNC8 (struct thread*,uintptr_t,uintptr_t*) ; 

__attribute__((used)) static void
FUNC9(struct thread *td)
{
	struct umtx_q *uq;
	struct umtx_pi *pi;
	uintptr_t rb_inact;

	/*
	 * Disown pi mutexes.
	 */
	uq = td->td_umtxq;
	if (uq != NULL) {
		if (uq->uq_inherited_pri != PRI_MAX ||
		    !FUNC0(&uq->uq_pi_contested)) {
			FUNC3(&umtx_lock);
			uq->uq_inherited_pri = PRI_MAX;
			while ((pi = FUNC1(&uq->uq_pi_contested)) != NULL) {
				pi->pi_owner = NULL;
				FUNC2(&uq->uq_pi_contested, pi, pi_link);
			}
			FUNC4(&umtx_lock);
		}
		FUNC5(td, PRI_MAX);
	}

	if (td->td_rb_inact == 0 && td->td_rb_list == 0 && td->td_rbp_list == 0)
		return;

	/*
	 * Handle terminated robust mutexes.  Must be done after
	 * robust pi disown, otherwise unlock could see unowned
	 * entries.
	 */
	rb_inact = td->td_rb_inact;
	if (rb_inact != 0)
		(void)FUNC8(td, rb_inact, &rb_inact);
	FUNC6(td, td->td_rb_list, &rb_inact, "");
	FUNC6(td, td->td_rbp_list, &rb_inact, "priv ");
	if (rb_inact != 0)
		(void)FUNC7(td, rb_inact, NULL, true);
}
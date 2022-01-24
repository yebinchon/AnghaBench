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
struct umtx_q {struct thread* uq_thread; } ;
struct umtx_pi {int /*<<< orphan*/  pi_blocked; struct thread* pi_owner; } ;
struct thread {int dummy; } ;

/* Variables and functions */
 int EPERM ; 
 struct umtx_q* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct thread*) ; 
 int /*<<< orphan*/  umtx_lock ; 
 int /*<<< orphan*/  FUNC7 (struct umtx_pi*,struct thread*) ; 

__attribute__((used)) static int
FUNC8(struct umtx_pi *pi, struct thread *owner)
{
	struct umtx_q *uq;
	int pri;

	FUNC2(&umtx_lock);
	if (pi->pi_owner == owner) {
		FUNC3(&umtx_lock);
		return (0);
	}

	if (pi->pi_owner != NULL) {
		/*
		 * userland may have already messed the mutex, sigh.
		 */
		FUNC3(&umtx_lock);
		return (EPERM);
	}
	FUNC7(pi, owner);
	uq = FUNC0(&pi->pi_blocked);
	if (uq != NULL) {
		pri = FUNC1(uq->uq_thread);
		FUNC5(owner);
		if (pri < FUNC1(owner))
			FUNC4(owner, pri);
		FUNC6(owner);
	}
	FUNC3(&umtx_lock);
	return (0);
}
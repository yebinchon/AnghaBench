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
typedef  int uint32_t ;
struct urwlock {int /*<<< orphan*/  rw_state; int /*<<< orphan*/  rw_flags; } ;
struct umtx_q {int /*<<< orphan*/  uq_key; } ;
struct thread {struct umtx_q* td_umtxq; } ;
typedef  int int32_t ;

/* Variables and functions */
 int EFAULT ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INT_MAX ; 
 int /*<<< orphan*/  TYPE_RWLOCK ; 
 int UMTX_EXCLUSIVE_QUEUE ; 
 int UMTX_SHARED_QUEUE ; 
 int URWLOCK_PREFER_READER ; 
 scalar_t__ FUNC1 (int) ; 
 int URWLOCK_READ_WAITERS ; 
 int URWLOCK_WRITE_OWNER ; 
 int URWLOCK_WRITE_WAITERS ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int FUNC4 (struct urwlock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct thread*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC12(struct thread *td, struct urwlock *rwlock)
{
	struct umtx_q *uq;
	uint32_t flags;
	int32_t state, oldstate;
	int error, rv, q, count;

	uq = td->td_umtxq;
	error = FUNC3(&rwlock->rw_flags, &flags);
	if (error == -1)
		return (EFAULT);
	error = FUNC4(rwlock, TYPE_RWLOCK, FUNC0(flags), &uq->uq_key);
	if (error != 0)
		return (error);

	error = FUNC3(&rwlock->rw_state, &state);
	if (error == -1) {
		error = EFAULT;
		goto out;
	}
	if (state & URWLOCK_WRITE_OWNER) {
		for (;;) {
			rv = FUNC2(&rwlock->rw_state, state, 
			    &oldstate, state & ~URWLOCK_WRITE_OWNER);
			if (rv == -1) {
				error = EFAULT;
				goto out;
			}
			if (rv == 1) {
				state = oldstate;
				if (!(oldstate & URWLOCK_WRITE_OWNER)) {
					error = EPERM;
					goto out;
				}
				error = FUNC7(td, true);
				if (error != 0)
					goto out;
			} else
				break;
		}
	} else if (FUNC1(state) != 0) {
		for (;;) {
			rv = FUNC2(&rwlock->rw_state, state,
			    &oldstate, state - 1);
			if (rv == -1) {
				error = EFAULT;
				goto out;
			}
			if (rv == 1) {
				state = oldstate;
				if (FUNC1(oldstate) == 0) {
					error = EPERM;
					goto out;
				}
				error = FUNC7(td, true);
				if (error != 0)
					goto out;
			} else
				break;
		}
	} else {
		error = EPERM;
		goto out;
	}

	count = 0;

	if (!(flags & URWLOCK_PREFER_READER)) {
		if (state & URWLOCK_WRITE_WAITERS) {
			count = 1;
			q = UMTX_EXCLUSIVE_QUEUE;
		} else if (state & URWLOCK_READ_WAITERS) {
			count = INT_MAX;
			q = UMTX_SHARED_QUEUE;
		}
	} else {
		if (state & URWLOCK_READ_WAITERS) {
			count = INT_MAX;
			q = UMTX_SHARED_QUEUE;
		} else if (state & URWLOCK_WRITE_WAITERS) {
			count = 1;
			q = UMTX_EXCLUSIVE_QUEUE;
		}
	}

	if (count) {
		FUNC8(&uq->uq_key);
		FUNC6(&uq->uq_key);
		FUNC9(&uq->uq_key, count, q);
		FUNC10(&uq->uq_key);
		FUNC11(&uq->uq_key);
	}
out:
	FUNC5(&uq->uq_key);
	return (error);
}
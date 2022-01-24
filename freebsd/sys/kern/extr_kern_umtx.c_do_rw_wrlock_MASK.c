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
typedef  scalar_t__ uint32_t ;
struct urwlock {int /*<<< orphan*/  rw_blocked_readers; int /*<<< orphan*/  rw_state; int /*<<< orphan*/  rw_blocked_writers; int /*<<< orphan*/  rw_flags; } ;
struct umtx_q {int /*<<< orphan*/  uq_key; } ;
struct thread {struct umtx_q* td_umtxq; } ;
struct abs_timeout {int dummy; } ;
struct _umtx_time {int dummy; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 int EFAULT ; 
 int EINTR ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TYPE_RWLOCK ; 
 int /*<<< orphan*/  UMTX_EXCLUSIVE_QUEUE ; 
 int /*<<< orphan*/  UMTX_SHARED_QUEUE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ URWLOCK_WRITE_OWNER ; 
 scalar_t__ URWLOCK_WRITE_WAITERS ; 
 int /*<<< orphan*/  FUNC3 (struct abs_timeout*,struct _umtx_time*) ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (struct urwlock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct thread*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct umtx_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct umtx_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct umtx_q*,char*,struct abs_timeout*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(struct thread *td, struct urwlock *rwlock, struct _umtx_time *timeout)
{
	struct abs_timeout timo;
	struct umtx_q *uq;
	uint32_t flags;
	int32_t state, oldstate;
	int32_t blocked_writers;
	int32_t blocked_readers;
	int error, error1, rv;

	uq = td->td_umtxq;
	error = FUNC5(&rwlock->rw_flags, &flags);
	if (error == -1)
		return (EFAULT);
	error = FUNC7(rwlock, TYPE_RWLOCK, FUNC0(flags), &uq->uq_key);
	if (error != 0)
		return (error);

	if (timeout != NULL)
		FUNC3(&timo, timeout);

	blocked_readers = 0;
	for (;;) {
		rv = FUNC5(&rwlock->rw_state, &state);
		if (rv == -1) {
			FUNC8(&uq->uq_key);
			return (EFAULT);
		}
		while ((state & URWLOCK_WRITE_OWNER) == 0 &&
		    FUNC2(state) == 0) {
			rv = FUNC4(&rwlock->rw_state, state,
			    &oldstate, state | URWLOCK_WRITE_OWNER);
			if (rv == -1) {
				FUNC8(&uq->uq_key);
				return (EFAULT);
			}
			if (rv == 0) {
				FUNC1(oldstate == state);
				FUNC8(&uq->uq_key);
				return (0);
			}
			state = oldstate;
			error = FUNC10(td, true);
			if (error != 0)
				break;
		}

		if (error) {
			if ((state & (URWLOCK_WRITE_OWNER |
			    URWLOCK_WRITE_WAITERS)) == 0 &&
			    blocked_readers != 0) {
				FUNC12(&uq->uq_key);
				FUNC9(&uq->uq_key);
				FUNC14(&uq->uq_key, INT_MAX,
				    UMTX_SHARED_QUEUE);
				FUNC16(&uq->uq_key);
				FUNC18(&uq->uq_key);
			}

			break;
		}

		/* grab monitor lock */
		FUNC12(&uq->uq_key);
		FUNC9(&uq->uq_key);
		FUNC18(&uq->uq_key);

		/*
		 * Re-read the state, in case it changed between the
		 * try-lock above and the check below.
		 */
		rv = FUNC5(&rwlock->rw_state, &state);
		if (rv == -1)
			error = EFAULT;

		while (error == 0 && ((state & URWLOCK_WRITE_OWNER) ||
		    FUNC2(state) != 0) &&
		    (state & URWLOCK_WRITE_WAITERS) == 0) {
			rv = FUNC4(&rwlock->rw_state, state,
			    &oldstate, state | URWLOCK_WRITE_WAITERS);
			if (rv == -1) {
				error = EFAULT;
				break;
			}
			if (rv == 0) {
				FUNC1(oldstate == state);
				goto sleep;
			}
			state = oldstate;
			error = FUNC10(td, false);
			if (error != 0)
				break;
		}
		if (error != 0) {
			FUNC17(&uq->uq_key);
			break;
		}

		if ((state & URWLOCK_WRITE_OWNER) == 0 &&
		    FUNC2(state) == 0) {
			FUNC17(&uq->uq_key);
			error = FUNC10(td, false);
			if (error != 0)
				break;
			continue;
		}
sleep:
		rv = FUNC5(&rwlock->rw_blocked_writers,
		    &blocked_writers);
		if (rv == -1) {
			FUNC17(&uq->uq_key);
			error = EFAULT;
			break;
		}
		FUNC6(&rwlock->rw_blocked_writers, blocked_writers + 1);

		while ((state & URWLOCK_WRITE_OWNER) ||
		    FUNC2(state) != 0) {
			FUNC12(&uq->uq_key);
			FUNC11(uq, UMTX_EXCLUSIVE_QUEUE);
			FUNC16(&uq->uq_key);

			error = FUNC15(uq, "uwrlck", timeout == NULL ?
			    NULL : &timo);

			FUNC9(&uq->uq_key);
			FUNC13(uq, UMTX_EXCLUSIVE_QUEUE);
			FUNC18(&uq->uq_key);
			if (error)
				break;
			rv = FUNC5(&rwlock->rw_state, &state);
			if (rv == -1) {
				error = EFAULT;
				break;
			}
		}

		rv = FUNC5(&rwlock->rw_blocked_writers,
		    &blocked_writers);
		if (rv == -1) {
			FUNC17(&uq->uq_key);
			error = EFAULT;
			break;
		}
		FUNC6(&rwlock->rw_blocked_writers, blocked_writers-1);
		if (blocked_writers == 1) {
			rv = FUNC5(&rwlock->rw_state, &state);
			if (rv == -1) {
				FUNC17(&uq->uq_key);
				error = EFAULT;
				break;
			}
			for (;;) {
				rv = FUNC4(&rwlock->rw_state, state,
				    &oldstate, state & ~URWLOCK_WRITE_WAITERS);
				if (rv == -1) {
					error = EFAULT;
					break;
				}
				if (rv == 0) {
					FUNC1(oldstate == state);
					break;
				}
				state = oldstate;
				error1 = FUNC10(td, false);
				/*
				 * We are leaving the URWLOCK_WRITE_WAITERS
				 * behind, but this should not harm the
				 * correctness.
				 */
				if (error1 != 0) {
					if (error == 0)
						error = error1;
					break;
				}
			}
			rv = FUNC5(&rwlock->rw_blocked_readers,
			    &blocked_readers);
			if (rv == -1) {
				FUNC17(&uq->uq_key);
				error = EFAULT;
				break;
			}
		} else
			blocked_readers = 0;

		FUNC17(&uq->uq_key);
	}

	FUNC8(&uq->uq_key);
	if (error == ERESTART)
		error = EINTR;
	return (error);
}
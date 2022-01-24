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
typedef  long uint32_t ;
struct urwlock {int /*<<< orphan*/  rw_state; int /*<<< orphan*/  rw_blocked_readers; int /*<<< orphan*/  rw_flags; } ;
struct umtx_q {int /*<<< orphan*/  uq_key; } ;
struct thread {struct umtx_q* td_umtxq; } ;
struct abs_timeout {int dummy; } ;
struct _umtx_time {int dummy; } ;
typedef  long int32_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int EINTR ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  TYPE_RWLOCK ; 
 scalar_t__ URWLOCK_MAX_READERS ; 
 long URWLOCK_PREFER_READER ; 
 scalar_t__ FUNC2 (long) ; 
 long URWLOCK_READ_WAITERS ; 
 long URWLOCK_WRITE_OWNER ; 
 long URWLOCK_WRITE_WAITERS ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct abs_timeout*,struct _umtx_time*) ; 
 int FUNC5 (int /*<<< orphan*/ *,long,long*,long) ; 
 int FUNC6 (int /*<<< orphan*/ *,long*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,long) ; 
 int FUNC8 (struct urwlock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct thread*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct umtx_q*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct umtx_q*) ; 
 int FUNC15 (struct umtx_q*,char*,struct abs_timeout*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(struct thread *td, struct urwlock *rwlock, long fflag,
    struct _umtx_time *timeout)
{
	struct abs_timeout timo;
	struct umtx_q *uq;
	uint32_t flags, wrflags;
	int32_t state, oldstate;
	int32_t blocked_readers;
	int error, error1, rv;

	uq = td->td_umtxq;
	error = FUNC6(&rwlock->rw_flags, &flags);
	if (error == -1)
		return (EFAULT);
	error = FUNC8(rwlock, TYPE_RWLOCK, FUNC0(flags), &uq->uq_key);
	if (error != 0)
		return (error);

	if (timeout != NULL)
		FUNC4(&timo, timeout);

	wrflags = URWLOCK_WRITE_OWNER;
	if (!(fflag & URWLOCK_PREFER_READER) && !(flags & URWLOCK_PREFER_READER))
		wrflags |= URWLOCK_WRITE_WAITERS;

	for (;;) {
		rv = FUNC6(&rwlock->rw_state, &state);
		if (rv == -1) {
			FUNC9(&uq->uq_key);
			return (EFAULT);
		}

		/* try to lock it */
		while (!(state & wrflags)) {
			if (FUNC3(FUNC2(state) ==
			    URWLOCK_MAX_READERS)) {
				FUNC9(&uq->uq_key);
				return (EAGAIN);
			}
			rv = FUNC5(&rwlock->rw_state, state,
			    &oldstate, state + 1);
			if (rv == -1) {
				FUNC9(&uq->uq_key);
				return (EFAULT);
			}
			if (rv == 0) {
				FUNC1(oldstate == state);
				FUNC9(&uq->uq_key);
				return (0);
			}
			error = FUNC11(td, true);
			if (error != 0)
				break;
			state = oldstate;
		}

		if (error)
			break;

		/* grab monitor lock */
		FUNC13(&uq->uq_key);
		FUNC10(&uq->uq_key);
		FUNC18(&uq->uq_key);

		/*
		 * re-read the state, in case it changed between the try-lock above
		 * and the check below
		 */
		rv = FUNC6(&rwlock->rw_state, &state);
		if (rv == -1)
			error = EFAULT;

		/* set read contention bit */
		while (error == 0 && (state & wrflags) &&
		    !(state & URWLOCK_READ_WAITERS)) {
			rv = FUNC5(&rwlock->rw_state, state,
			    &oldstate, state | URWLOCK_READ_WAITERS);
			if (rv == -1) {
				error = EFAULT;
				break;
			}
			if (rv == 0) {
				FUNC1(oldstate == state);
				goto sleep;
			}
			state = oldstate;
			error = FUNC11(td, false);
			if (error != 0)
				break;
		}
		if (error != 0) {
			FUNC17(&uq->uq_key);
			break;
		}

		/* state is changed while setting flags, restart */
		if (!(state & wrflags)) {
			FUNC17(&uq->uq_key);
			error = FUNC11(td, true);
			if (error != 0)
				break;
			continue;
		}

sleep:
		/*
		 * Contention bit is set, before sleeping, increase
		 * read waiter count.
		 */
		rv = FUNC6(&rwlock->rw_blocked_readers,
		    &blocked_readers);
		if (rv == -1) {
			FUNC17(&uq->uq_key);
			error = EFAULT;
			break;
		}
		FUNC7(&rwlock->rw_blocked_readers, blocked_readers+1);

		while (state & wrflags) {
			FUNC13(&uq->uq_key);
			FUNC12(uq);
			FUNC16(&uq->uq_key);

			error = FUNC15(uq, "urdlck", timeout == NULL ?
			    NULL : &timo);

			FUNC10(&uq->uq_key);
			FUNC14(uq);
			FUNC18(&uq->uq_key);
			if (error)
				break;
			rv = FUNC6(&rwlock->rw_state, &state);
			if (rv == -1) {
				error = EFAULT;
				break;
			}
		}

		/* decrease read waiter count, and may clear read contention bit */
		rv = FUNC6(&rwlock->rw_blocked_readers,
		    &blocked_readers);
		if (rv == -1) {
			FUNC17(&uq->uq_key);
			error = EFAULT;
			break;
		}
		FUNC7(&rwlock->rw_blocked_readers, blocked_readers-1);
		if (blocked_readers == 1) {
			rv = FUNC6(&rwlock->rw_state, &state);
			if (rv == -1) {
				FUNC17(&uq->uq_key);
				error = EFAULT;
				break;
			}
			for (;;) {
				rv = FUNC5(&rwlock->rw_state, state,
				    &oldstate, state & ~URWLOCK_READ_WAITERS);
				if (rv == -1) {
					error = EFAULT;
					break;
				}
				if (rv == 0) {
					FUNC1(oldstate == state);
					break;
				}
				state = oldstate;
				error1 = FUNC11(td, false);
				if (error1 != 0) {
					if (error == 0)
						error = error1;
					break;
				}
			}
		}

		FUNC17(&uq->uq_key);
		if (error != 0)
			break;
	}
	FUNC9(&uq->uq_key);
	if (error == ERESTART)
		error = EINTR;
	return (error);
}
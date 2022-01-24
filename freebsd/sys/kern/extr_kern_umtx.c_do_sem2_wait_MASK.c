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
struct umtx_q {int uq_flags; int /*<<< orphan*/  uq_key; } ;
struct thread {struct umtx_q* td_umtxq; } ;
struct abs_timeout {int /*<<< orphan*/  cur; int /*<<< orphan*/  end; } ;
struct _usem2 {int /*<<< orphan*/  _count; int /*<<< orphan*/  _flags; } ;
struct _umtx_time {int _flags; int /*<<< orphan*/  _timeout; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINTR ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  TYPE_SEM ; 
 int UMTX_ABSTIME ; 
 int UQF_UMTXQ ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ USEM_HAS_WAITERS ; 
 int /*<<< orphan*/  FUNC2 (struct abs_timeout*,struct _umtx_time*) ; 
 int /*<<< orphan*/  FUNC3 (struct abs_timeout*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct _usem2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct thread*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct umtx_q*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct umtx_q*) ; 
 int FUNC15 (struct umtx_q*,char*,struct abs_timeout*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC18(struct thread *td, struct _usem2 *sem, struct _umtx_time *timeout)
{
	struct abs_timeout timo;
	struct umtx_q *uq;
	uint32_t count, flags;
	int error, rv;

	uq = td->td_umtxq;
	flags = FUNC6(&sem->_flags);
	if (timeout != NULL)
		FUNC2(&timo, timeout);

again:
	error = FUNC8(sem, TYPE_SEM, FUNC0(flags), &uq->uq_key);
	if (error != 0)
		return (error);
	FUNC13(&uq->uq_key);
	FUNC10(&uq->uq_key);
	FUNC12(uq);
	FUNC17(&uq->uq_key);
	rv = FUNC5(&sem->_count, &count);
	if (rv == -1) {
		FUNC13(&uq->uq_key);
		FUNC16(&uq->uq_key);
		FUNC14(uq);
		FUNC17(&uq->uq_key);
		FUNC9(&uq->uq_key);
		return (EFAULT);
	}
	for (;;) {
		if (FUNC1(count) != 0) {
			FUNC13(&uq->uq_key);
			FUNC16(&uq->uq_key);
			FUNC14(uq);
			FUNC17(&uq->uq_key);
			FUNC9(&uq->uq_key);
			return (0);
		}
		if (count == USEM_HAS_WAITERS)
			break;
		rv = FUNC4(&sem->_count, 0, &count, USEM_HAS_WAITERS);
		if (rv == 0)
			break;
		FUNC13(&uq->uq_key);
		FUNC16(&uq->uq_key);
		FUNC14(uq);
		FUNC17(&uq->uq_key);
		FUNC9(&uq->uq_key);
		if (rv == -1)
			return (EFAULT);
		rv = FUNC11(td, true);
		if (rv != 0)
			return (rv);
		goto again;
	}
	FUNC13(&uq->uq_key);
	FUNC16(&uq->uq_key);

	error = FUNC15(uq, "usem", timeout == NULL ? NULL : &timo);

	if ((uq->uq_flags & UQF_UMTXQ) == 0)
		error = 0;
	else {
		FUNC14(uq);
		if (timeout != NULL && (timeout->_flags & UMTX_ABSTIME) == 0) {
			/* A relative timeout cannot be restarted. */
			if (error == ERESTART)
				error = EINTR;
			if (error == EINTR) {
				FUNC3(&timo);
				FUNC7(&timo.end, &timo.cur,
				    &timeout->_timeout);
			}
		}
	}
	FUNC17(&uq->uq_key);
	FUNC9(&uq->uq_key);
	return (error);
}
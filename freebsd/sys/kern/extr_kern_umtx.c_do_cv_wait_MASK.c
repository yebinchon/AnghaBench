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
typedef  scalar_t__ uint32_t ;
typedef  int u_long ;
struct umutex {int dummy; } ;
struct umtx_q {int uq_flags; int /*<<< orphan*/  uq_key; TYPE_1__* uq_cur_queue; } ;
struct ucond {int /*<<< orphan*/  c_has_waiters; int /*<<< orphan*/  c_clockid; int /*<<< orphan*/  c_flags; } ;
struct timespec {int dummy; } ;
struct thread {struct umtx_q* td_umtxq; } ;
struct abs_timeout {int dummy; } ;
struct TYPE_2__ {int length; } ;

/* Variables and functions */
 scalar_t__ CLOCK_REALTIME ; 
 scalar_t__ CLOCK_THREAD_CPUTIME_ID ; 
 int CVWAIT_ABSTIME ; 
 int CVWAIT_CLOCKID ; 
 int EFAULT ; 
 int EINTR ; 
 int EINVAL ; 
 int ERESTART ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  TYPE_CV ; 
 int UQF_UMTXQ ; 
 int /*<<< orphan*/  FUNC1 (struct abs_timeout*,scalar_t__,int,struct timespec*) ; 
 int FUNC2 (struct thread*,struct umutex*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct ucond*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct umtx_q*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct umtx_q*) ; 
 int FUNC11 (struct umtx_q*,char*,struct abs_timeout*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(struct thread *td, struct ucond *cv, struct umutex *m,
    struct timespec *timeout, u_long wflags)
{
	struct abs_timeout timo;
	struct umtx_q *uq;
	uint32_t flags, clockid, hasw;
	int error;

	uq = td->td_umtxq;
	error = FUNC3(&cv->c_flags, &flags);
	if (error == -1)
		return (EFAULT);
	error = FUNC5(cv, TYPE_CV, FUNC0(flags), &uq->uq_key);
	if (error != 0)
		return (error);

	if ((wflags & CVWAIT_CLOCKID) != 0) {
		error = FUNC3(&cv->c_clockid, &clockid);
		if (error == -1) {
			FUNC6(&uq->uq_key);
			return (EFAULT);
		}
		if (clockid < CLOCK_REALTIME ||
		    clockid >= CLOCK_THREAD_CPUTIME_ID) {
			/* hmm, only HW clock id will work. */
			FUNC6(&uq->uq_key);
			return (EINVAL);
		}
	} else {
		clockid = CLOCK_REALTIME;
	}

	FUNC9(&uq->uq_key);
	FUNC7(&uq->uq_key);
	FUNC8(uq);
	FUNC14(&uq->uq_key);

	/*
	 * Set c_has_waiters to 1 before releasing user mutex, also
	 * don't modify cache line when unnecessary.
	 */
	error = FUNC3(&cv->c_has_waiters, &hasw);
	if (error == 0 && hasw == 0)
		FUNC4(&cv->c_has_waiters, 1);

	FUNC13(&uq->uq_key);

	error = FUNC2(td, m, false);

	if (timeout != NULL)
		FUNC1(&timo, clockid, (wflags & CVWAIT_ABSTIME) != 0,
		    timeout);
	
	FUNC9(&uq->uq_key);
	if (error == 0) {
		error = FUNC11(uq, "ucond", timeout == NULL ?
		    NULL : &timo);
	}

	if ((uq->uq_flags & UQF_UMTXQ) == 0)
		error = 0;
	else {
		/*
		 * This must be timeout,interrupted by signal or
		 * surprious wakeup, clear c_has_waiter flag when
		 * necessary.
		 */
		FUNC7(&uq->uq_key);
		if ((uq->uq_flags & UQF_UMTXQ) != 0) {
			int oldlen = uq->uq_cur_queue->length;
			FUNC10(uq);
			if (oldlen == 1) {
				FUNC14(&uq->uq_key);
				FUNC4(&cv->c_has_waiters, 0);
				FUNC9(&uq->uq_key);
			}
		}
		FUNC12(&uq->uq_key);
		if (error == ERESTART)
			error = EINTR;
	}

	FUNC14(&uq->uq_key);
	FUNC6(&uq->uq_key);
	return (error);
}
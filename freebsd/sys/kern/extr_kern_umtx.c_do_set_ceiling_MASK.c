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
struct umutex {int m_flags; int* m_ceilings; int m_owner; } ;
struct umtx_q {int /*<<< orphan*/  uq_key; } ;
struct thread {int td_tid; struct umtx_q* td_umtxq; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOTRECOVERABLE ; 
 int EOWNERDEAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int RTP_PRIO_MAX ; 
 int /*<<< orphan*/  TYPE_PP_ROBUST_UMUTEX ; 
 int /*<<< orphan*/  TYPE_PP_UMUTEX ; 
 int UMUTEX_CONTESTED ; 
 int UMUTEX_PRIO_PROTECT ; 
 int UMUTEX_RB_NOTRECOV ; 
 int UMUTEX_RB_OWNERDEAD ; 
 int UMUTEX_ROBUST ; 
 int FUNC2 (int*,int,int*,int) ; 
 int FUNC3 (int*,int*) ; 
 int FUNC4 (int*,int) ; 
 int FUNC5 (struct umutex*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct umtx_q*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct umtx_q*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct umtx_q*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(struct thread *td, struct umutex *m, uint32_t ceiling,
    uint32_t *old_ceiling)
{
	struct umtx_q *uq;
	uint32_t flags, id, owner, save_ceiling;
	int error, rv, rv1;

	error = FUNC3(&m->m_flags, &flags);
	if (error == -1)
		return (EFAULT);
	if ((flags & UMUTEX_PRIO_PROTECT) == 0)
		return (EINVAL);
	if (ceiling > RTP_PRIO_MAX)
		return (EINVAL);
	id = td->td_tid;
	uq = td->td_umtxq;
	if ((error = FUNC5(m, (flags & UMUTEX_ROBUST) != 0 ?
	    TYPE_PP_ROBUST_UMUTEX : TYPE_PP_UMUTEX, FUNC0(flags),
	    &uq->uq_key)) != 0)
		return (error);
	for (;;) {
		FUNC9(&uq->uq_key);
		FUNC7(&uq->uq_key);
		FUNC14(&uq->uq_key);

		rv = FUNC3(&m->m_ceilings[0], &save_ceiling);
		if (rv == -1) {
			error = EFAULT;
			break;
		}

		rv = FUNC2(&m->m_owner, UMUTEX_CONTESTED, &owner,
		    id | UMUTEX_CONTESTED);
		if (rv == -1) {
			error = EFAULT;
			break;
		}

		if (rv == 0) {
			FUNC1(owner == UMUTEX_CONTESTED);
			rv = FUNC4(&m->m_ceilings[0], ceiling);
			rv1 = FUNC4(&m->m_owner, UMUTEX_CONTESTED);
			error = (rv == 0 && rv1 == 0) ? 0: EFAULT;
			break;
		}

		if ((owner & ~UMUTEX_CONTESTED) == id) {
			rv = FUNC4(&m->m_ceilings[0], ceiling);
			error = rv == 0 ? 0 : EFAULT;
			break;
		}

		if (owner == UMUTEX_RB_OWNERDEAD) {
			error = EOWNERDEAD;
			break;
		} else if (owner == UMUTEX_RB_NOTRECOV) {
			error = ENOTRECOVERABLE;
			break;
		}

		/*
		 * If we caught a signal, we have retried and now
		 * exit immediately.
		 */
		if (error != 0)
			break;

		/*
		 * We set the contested bit, sleep. Otherwise the lock changed
		 * and we need to retry or we lost a race to the thread
		 * unlocking the umtx.
		 */
		FUNC9(&uq->uq_key);
		FUNC8(uq);
		FUNC13(&uq->uq_key);
		error = FUNC12(uq, "umtxpp", NULL);
		FUNC10(uq);
		FUNC14(&uq->uq_key);
	}
	FUNC9(&uq->uq_key);
	if (error == 0)
		FUNC11(&uq->uq_key, INT_MAX);
	FUNC13(&uq->uq_key);
	FUNC14(&uq->uq_key);
	FUNC6(&uq->uq_key);
	if (error == 0 && old_ceiling != NULL) {
		rv = FUNC4(old_ceiling, save_ceiling);
		error = rv == 0 ? 0 : EFAULT;
	}
	return (error);
}
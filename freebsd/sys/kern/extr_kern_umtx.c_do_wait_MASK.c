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
typedef  scalar_t__ u_long ;
struct umtx_q {int uq_flags; int /*<<< orphan*/  uq_key; } ;
struct thread {struct umtx_q* td_umtxq; } ;
struct abs_timeout {int dummy; } ;
struct _umtx_time {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_SHARE ; 
 int EFAULT ; 
 int EINTR ; 
 int ERESTART ; 
 int /*<<< orphan*/  THREAD_SHARE ; 
 int /*<<< orphan*/  TYPE_SIMPLE_WAIT ; 
 int UQF_UMTXQ ; 
 int /*<<< orphan*/  FUNC0 (struct abs_timeout*,struct _umtx_time*) ; 
 int FUNC1 (void*,scalar_t__*) ; 
 int FUNC2 (void*,scalar_t__*) ; 
 int FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct umtx_q*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct umtx_q*) ; 
 int FUNC8 (struct umtx_q*,char*,struct abs_timeout*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct thread *td, void *addr, u_long id,
    struct _umtx_time *timeout, int compat32, int is_private)
{
	struct abs_timeout timo;
	struct umtx_q *uq;
	u_long tmp;
	uint32_t tmp32;
	int error = 0;

	uq = td->td_umtxq;
	if ((error = FUNC3(addr, TYPE_SIMPLE_WAIT,
		is_private ? THREAD_SHARE : AUTO_SHARE, &uq->uq_key)) != 0)
		return (error);

	if (timeout != NULL)
		FUNC0(&timo, timeout);

	FUNC6(&uq->uq_key);
	FUNC5(uq);
	FUNC9(&uq->uq_key);
	if (compat32 == 0) {
		error = FUNC1(addr, &tmp);
		if (error != 0)
			error = EFAULT;
	} else {
		error = FUNC2(addr, &tmp32);
		if (error == 0)
			tmp = tmp32;
		else
			error = EFAULT;
	}
	FUNC6(&uq->uq_key);
	if (error == 0) {
		if (tmp == id)
			error = FUNC8(uq, "uwait", timeout == NULL ?
			    NULL : &timo);
		if ((uq->uq_flags & UQF_UMTXQ) == 0)
			error = 0;
		else
			FUNC7(uq);
	} else if ((uq->uq_flags & UQF_UMTXQ) != 0) {
		FUNC7(uq);
	}
	FUNC9(&uq->uq_key);
	FUNC4(&uq->uq_key);
	if (error == ERESTART)
		error = EINTR;
	return (error);
}
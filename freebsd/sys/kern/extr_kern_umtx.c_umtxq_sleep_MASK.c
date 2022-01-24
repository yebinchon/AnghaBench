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
struct umtxq_chain {int /*<<< orphan*/  uc_lock; } ;
struct umtx_q {int uq_flags; int /*<<< orphan*/  uq_key; } ;
struct abs_timeout {scalar_t__ is_abs_real; } ;
struct TYPE_2__ {void* td_rtcgen; } ;

/* Variables and functions */
 int EINTR ; 
 int ERESTART ; 
 int ETIMEDOUT ; 
 int PCATCH ; 
 int PDROP ; 
 int /*<<< orphan*/  FUNC0 (struct umtxq_chain*) ; 
 int UQF_UMTXQ ; 
 int FUNC1 (struct abs_timeout*) ; 
 int /*<<< orphan*/  FUNC2 (struct abs_timeout*) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* curthread ; 
 int FUNC4 (struct umtx_q*,int /*<<< orphan*/ *,int,char const*,int) ; 
 int /*<<< orphan*/  rtc_generation ; 
 struct umtxq_chain* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC7(struct umtx_q *uq, const char *wmesg, struct abs_timeout *abstime)
{
	struct umtxq_chain *uc;
	int error, timo;

	if (abstime != NULL && abstime->is_abs_real) {
		curthread->td_rtcgen = FUNC3(&rtc_generation);
		FUNC2(abstime);
	}

	uc = FUNC5(&uq->uq_key);
	FUNC0(uc);
	for (;;) {
		if (!(uq->uq_flags & UQF_UMTXQ)) {
			error = 0;
			break;
		}
		if (abstime != NULL) {
			timo = FUNC1(abstime);
			if (timo < 0) {
				error = ETIMEDOUT;
				break;
			}
		} else
			timo = 0;
		error = FUNC4(uq, &uc->uc_lock, PCATCH | PDROP, wmesg, timo);
		if (error == EINTR || error == ERESTART) {
			FUNC6(&uq->uq_key);
			break;
		}
		if (abstime != NULL) {
			if (abstime->is_abs_real)
				curthread->td_rtcgen =
				    FUNC3(&rtc_generation);
			FUNC2(abstime);
		}
		FUNC6(&uq->uq_key);
	}

	curthread->td_rtcgen = 0;
	return (error);
}
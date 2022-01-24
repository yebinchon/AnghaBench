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
struct umtxq_queue {scalar_t__ length; int /*<<< orphan*/  head; } ;
struct umtxq_chain {int /*<<< orphan*/  uc_spare_queue; int /*<<< orphan*/  length; } ;
struct umtx_q {int uq_flags; struct umtxq_queue* uq_cur_queue; struct umtxq_queue* uq_spare_queue; int /*<<< orphan*/  uq_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 struct umtxq_queue* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct umtxq_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct umtx_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct umtxq_chain*) ; 
 int UQF_UMTXQ ; 
 int /*<<< orphan*/  link ; 
 struct umtxq_chain* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uq_link ; 

__attribute__((used)) static inline void
FUNC7(struct umtx_q *uq, int q)
{
	struct umtxq_chain *uc;
	struct umtxq_queue *uh;

	uc = FUNC6(&uq->uq_key);
	FUNC5(uc);
	if (uq->uq_flags & UQF_UMTXQ) {
		uh = uq->uq_cur_queue;
		FUNC4(&uh->head, uq, uq_link);
		uh->length--;
		uq->uq_flags &= ~UQF_UMTXQ;
		if (FUNC3(&uh->head)) {
			FUNC0(uh->length == 0,
			    ("inconsistent umtxq_queue length"));
#ifdef UMTX_PROFILING
			uc->length--;
#endif
			FUNC2(uh, link);
		} else {
			uh = FUNC1(&uc->uc_spare_queue);
			FUNC0(uh != NULL, ("uc_spare_queue is empty"));
			FUNC2(uh, link);
		}
		uq->uq_spare_queue = uh;
		uq->uq_cur_queue = NULL;
	}
}
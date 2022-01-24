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
struct umtxq_queue {int /*<<< orphan*/  length; int /*<<< orphan*/  head; int /*<<< orphan*/  key; } ;
struct umtxq_chain {scalar_t__ length; scalar_t__ max_length; int /*<<< orphan*/ * uc_queue; int /*<<< orphan*/  uc_spare_queue; } ;
struct umtx_q {int uq_flags; struct umtxq_queue* uq_cur_queue; struct umtxq_queue* uq_spare_queue; int /*<<< orphan*/  uq_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct umtxq_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct umtx_q*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct umtxq_chain*) ; 
 int UQF_UMTXQ ; 
 int /*<<< orphan*/  link ; 
 scalar_t__ max_length ; 
 struct umtxq_chain* FUNC4 (int /*<<< orphan*/ *) ; 
 struct umtxq_queue* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  uq_link ; 

__attribute__((used)) static inline void
FUNC6(struct umtx_q *uq, int q)
{
	struct umtxq_queue *uh;
	struct umtxq_chain *uc;

	uc = FUNC4(&uq->uq_key);
	FUNC3(uc);
	FUNC0((uq->uq_flags & UQF_UMTXQ) == 0, ("umtx_q is already on queue"));
	uh = FUNC5(&uq->uq_key, q);
	if (uh != NULL) {
		FUNC1(&uc->uc_spare_queue, uq->uq_spare_queue, link);
	} else {
		uh = uq->uq_spare_queue;
		uh->key = uq->uq_key;
		FUNC1(&uc->uc_queue[q], uh, link);
#ifdef UMTX_PROFILING
		uc->length++;
		if (uc->length > uc->max_length) {
			uc->max_length = uc->length;
			if (uc->max_length > max_length)
				max_length = uc->max_length;	
		}
#endif
	}
	uq->uq_spare_queue = NULL;

	FUNC2(&uh->head, uq, uq_link);
	uh->length++;
	uq->uq_flags |= UQF_UMTXQ;
	uq->uq_cur_queue = uh;
	return;
}
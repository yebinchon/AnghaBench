#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  int uint8_t ;
struct vm_pagequeue {int /*<<< orphan*/  pq_pl; } ;
struct vm_domain {int /*<<< orphan*/  vmd_inacthead; } ;
struct TYPE_14__ {int /*<<< orphan*/  q; } ;
struct TYPE_13__ {scalar_t__ queue; int /*<<< orphan*/  aflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int PGA_DEQUEUE ; 
 int PGA_ENQUEUED ; 
 int PGA_QUEUE_STATE_MASK ; 
 int PGA_REQUEUE ; 
 int PGA_REQUEUE_HEAD ; 
 scalar_t__ PQ_INACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  curthread ; 
 TYPE_9__ plinks ; 
 int /*<<< orphan*/  queue_nops ; 
 int /*<<< orphan*/  queue_ops ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 struct vm_pagequeue* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct vm_pagequeue*) ; 
 int /*<<< orphan*/  FUNC13 (struct vm_pagequeue*) ; 
 struct vm_domain* FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (struct vm_pagequeue*,TYPE_1__*) ; 

__attribute__((used)) static inline void
FUNC16(struct vm_pagequeue *pq, vm_page_t m)
{
	struct vm_domain *vmd;
	uint8_t qflags;

	FUNC0(curthread);
	FUNC12(pq);

	/*
	 * The page daemon is allowed to set m->queue = PQ_NONE without
	 * the page queue lock held.  In this case it is about to free the page,
	 * which must not have any queue state.
	 */
	qflags = FUNC6(&m->aflags);
	FUNC1(pq == FUNC11(m) ||
	    (qflags & PGA_QUEUE_STATE_MASK) == 0,
	    ("page %p doesn't belong to queue %p but has aflags %#x",
	    m, pq, qflags));

	if ((qflags & PGA_DEQUEUE) != 0) {
		if (FUNC5((qflags & PGA_ENQUEUED) != 0))
			FUNC15(pq, m);
		FUNC10(m);
		FUNC7(queue_ops, 1);
	} else if ((qflags & (PGA_REQUEUE | PGA_REQUEUE_HEAD)) != 0) {
		if ((qflags & PGA_ENQUEUED) != 0)
			FUNC4(&pq->pq_pl, m, plinks.q);
		else {
			FUNC13(pq);
			FUNC9(m, PGA_ENQUEUED);
		}

		/*
		 * Give PGA_REQUEUE_HEAD precedence over PGA_REQUEUE.
		 * In particular, if both flags are set in close succession,
		 * only PGA_REQUEUE_HEAD will be applied, even if it was set
		 * first.
		 */
		if ((qflags & PGA_REQUEUE_HEAD) != 0) {
			FUNC1(m->queue == PQ_INACTIVE,
			    ("head enqueue not supported for page %p", m));
			vmd = FUNC14(m);
			FUNC2(&vmd->vmd_inacthead, m, plinks.q);
		} else
			FUNC3(&pq->pq_pl, m, plinks.q);

		FUNC8(m, qflags & (PGA_REQUEUE |
		    PGA_REQUEUE_HEAD));
		FUNC7(queue_ops, 1);
	} else {
		FUNC7(queue_nops, 1);
	}
}
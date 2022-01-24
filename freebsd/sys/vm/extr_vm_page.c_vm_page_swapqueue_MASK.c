#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  size_t uint8_t ;
struct vm_pagequeue {int /*<<< orphan*/  pq_pl; } ;
struct TYPE_19__ {struct vm_pagequeue* vmd_pagequeues; } ;
struct TYPE_18__ {size_t queue; int aflags; } ;
struct TYPE_17__ {int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  PGA_DEQUEUE ; 
 int PGA_ENQUEUED ; 
 int /*<<< orphan*/  PGA_REQUEUE ; 
 size_t PQ_COUNT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 TYPE_10__ plinks ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct vm_pagequeue*) ; 
 TYPE_2__* FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (struct vm_pagequeue*) ; 
 int /*<<< orphan*/  FUNC15 (struct vm_pagequeue*) ; 

void
FUNC16(vm_page_t m, uint8_t oldq, uint8_t newq)
{
	struct vm_pagequeue *pq;
	vm_page_t next;
	bool queued;

	FUNC0(oldq < PQ_COUNT && newq < PQ_COUNT && oldq != newq,
	    ("vm_page_swapqueue: invalid queues (%d, %d)", oldq, newq));
	FUNC9(m);

	pq = &FUNC13(m)->vmd_pagequeues[oldq];
	FUNC14(pq);

	/*
	 * The physical queue state might change at any point before the page
	 * queue lock is acquired, so we must verify that we hold the correct
	 * lock before proceeding.
	 */
	if (FUNC5(m->queue != oldq)) {
		FUNC15(pq);
		return;
	}

	/*
	 * Once the queue index of the page changes, there is nothing
	 * synchronizing with further updates to the physical queue state.
	 * Therefore we must remove the page from the queue now in anticipation
	 * of a successful commit, and be prepared to roll back.
	 */
	if (FUNC6((m->aflags & PGA_ENQUEUED) != 0)) {
		next = FUNC3(m, plinks.q);
		FUNC4(&pq->pq_pl, m, plinks.q);
		FUNC7(m, PGA_ENQUEUED);
		queued = true;
	} else {
		queued = false;
	}

	/*
	 * Atomically update the queue field and set PGA_REQUEUE while
	 * ensuring that PGA_DEQUEUE has not been set.
	 */
	if (FUNC5(!FUNC11(m, oldq, newq, PGA_DEQUEUE,
	    PGA_REQUEUE))) {
		if (queued) {
			FUNC8(m, PGA_ENQUEUED);
			if (next != NULL)
				FUNC1(next, m, plinks.q);
			else
				FUNC2(&pq->pq_pl, m, plinks.q);
		}
		FUNC15(pq);
		return;
	}
	FUNC12(pq);
	FUNC15(pq);
	FUNC10(m, newq);
}
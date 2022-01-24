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
struct bufqueue {scalar_t__ bq_index; scalar_t__ bq_len; int /*<<< orphan*/  bq_subqueue; int /*<<< orphan*/  bq_queue; } ;
struct bufdomain {scalar_t__ bd_lim; struct bufqueue* bd_cleanq; scalar_t__ bd_wanted; } ;
struct buf {scalar_t__ b_qindex; int b_flags; int /*<<< orphan*/  b_subqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufqueue*) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int B_AGE ; 
 int B_REUSE ; 
 scalar_t__ QUEUE_CLEAN ; 
 scalar_t__ QUEUE_NONE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b_freelist ; 
 int /*<<< orphan*/  FUNC5 (struct bufdomain*,struct bufqueue*) ; 
 struct bufdomain* FUNC6 (struct buf*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct buf*) ; 

__attribute__((used)) static void
FUNC8(struct bufqueue *bq, struct buf *bp, bool unlock)
{
	struct bufdomain *bd;

	if (bp->b_qindex != QUEUE_NONE)
		FUNC7("bq_insert: free buffer %p onto another queue?", bp);

	bd = FUNC6(bp);
	if (bp->b_flags & B_AGE) {
		/* Place this buf directly on the real queue. */
		if (bq->bq_index == QUEUE_CLEAN)
			bq = bd->bd_cleanq;
		FUNC0(bq);
		FUNC3(&bq->bq_queue, bp, b_freelist);
	} else {
		FUNC0(bq);
		FUNC4(&bq->bq_queue, bp, b_freelist);
	}
	bp->b_flags &= ~(B_AGE | B_REUSE);
	bq->bq_len++;
	bp->b_qindex = bq->bq_index;
	bp->b_subqueue = bq->bq_subqueue;

	/*
	 * Unlock before we notify so that we don't wakeup a waiter that
	 * fails a trylock on the buf and sleeps again.
	 */
	if (unlock)
		FUNC2(bp);

	if (bp->b_qindex == QUEUE_CLEAN) {
		/*
		 * Flush the per-cpu queue and notify any waiters.
		 */
		if (bd->bd_wanted || (bq != bd->bd_cleanq &&
		    bq->bq_len >= bd->bd_lim))
			FUNC5(bd, bq);
	}
	FUNC1(bq);
}
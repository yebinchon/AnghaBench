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
struct bufqueue {int bq_len; int /*<<< orphan*/  bq_queue; } ;
struct buf {int b_flags; int /*<<< orphan*/  b_qindex; int /*<<< orphan*/  b_vp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 int B_REMFREE ; 
 int B_REUSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  KTR_BUF ; 
 int /*<<< orphan*/  QUEUE_EMPTY ; 
 int /*<<< orphan*/  QUEUE_NONE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b_freelist ; 
 struct bufqueue* FUNC5 (struct buf*) ; 

__attribute__((used)) static void
FUNC6(struct bufqueue *bq, struct buf *bp)
{

	FUNC2(KTR_BUF, "bq_remove(%p) vp %p flags %X",
	    bp, bp->b_vp, bp->b_flags);
	FUNC3(bp->b_qindex != QUEUE_NONE,
	    ("bq_remove: buffer %p not on a queue.", bp));
	FUNC3(FUNC5(bp) == bq,
	    ("bq_remove: Remove buffer %p from wrong queue.", bp));

	FUNC0(bq);
	if (bp->b_qindex != QUEUE_EMPTY) {
		FUNC1(bp);
	}
	FUNC3(bq->bq_len >= 1,
	    ("queue %d underflow", bp->b_qindex));
	FUNC4(&bq->bq_queue, bp, b_freelist);
	bq->bq_len--;
	bp->b_qindex = QUEUE_NONE;
	bp->b_flags &= ~(B_REMFREE | B_REUSE);
}
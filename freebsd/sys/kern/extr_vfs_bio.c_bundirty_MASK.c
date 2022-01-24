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
struct buf {int b_flags; scalar_t__ b_qindex; int /*<<< orphan*/ * b_bufobj; int /*<<< orphan*/  b_vp; } ;

/* Variables and functions */
 int B_DEFERRED ; 
 int B_DELWRI ; 
 int B_REMFREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  KTR_BUF ; 
 scalar_t__ QUEUE_NONE ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 

void
FUNC4(struct buf *bp)
{

	FUNC0(KTR_BUF, "bundirty(%p) vp %p flags %X", bp, bp->b_vp, bp->b_flags);
	FUNC1(bp->b_bufobj != NULL, ("No b_bufobj %p", bp));
	FUNC1(bp->b_flags & B_REMFREE || bp->b_qindex == QUEUE_NONE,
	    ("bundirty: buffer %p still on queue %d", bp, bp->b_qindex));

	if (bp->b_flags & B_DELWRI) {
		bp->b_flags &= ~B_DELWRI;
		FUNC3(bp);
		FUNC2(bp);
	}
	/*
	 * Since it is now being written, we can clear its deferred write flag.
	 */
	bp->b_flags &= ~B_DEFERRED;
}
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
struct buf {int b_flags; scalar_t__ b_qindex; int /*<<< orphan*/  b_vp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int B_REMFREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct buf*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  KTR_BUF ; 
 scalar_t__ QUEUE_NONE ; 

void
FUNC3(struct buf *bp)
{

	FUNC1(KTR_BUF, "bremfree(%p) vp %p flags %X", bp, bp->b_vp, bp->b_flags);
	FUNC2((bp->b_flags & B_REMFREE) == 0,
	    ("bremfree: buffer %p already marked for delayed removal.", bp));
	FUNC2(bp->b_qindex != QUEUE_NONE,
	    ("bremfree: buffer %p not on a queue.", bp));
	FUNC0(bp);

	bp->b_flags |= B_REMFREE;
}
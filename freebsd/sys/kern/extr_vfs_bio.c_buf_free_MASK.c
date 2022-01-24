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
struct buf {int b_flags; int b_vflags; scalar_t__ b_rcred; scalar_t__ b_wcred; int /*<<< orphan*/  b_dep; } ;
struct TYPE_2__ {int /*<<< orphan*/  bd_freebuffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int BV_BKGRDINPROG ; 
 int B_REMFREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ NOCRED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  buf_zone ; 
 TYPE_1__* FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct buf*) ; 

__attribute__((used)) static void
FUNC10(struct buf *bp)
{

	if (bp->b_flags & B_REMFREE)
		FUNC3(bp);
	if (bp->b_vflags & BV_BKGRDINPROG)
		FUNC8("losing buffer 1");
	if (bp->b_rcred != NOCRED) {
		FUNC7(bp->b_rcred);
		bp->b_rcred = NOCRED;
	}
	if (bp->b_wcred != NOCRED) {
		FUNC7(bp->b_wcred);
		bp->b_wcred = NOCRED;
	}
	if (!FUNC1(&bp->b_dep))
		FUNC4(bp);
	FUNC6(bp);
	FUNC2(&FUNC5(bp)->bd_freebuffers, 1);
	FUNC0(bp);
	FUNC9(buf_zone, bp);
}
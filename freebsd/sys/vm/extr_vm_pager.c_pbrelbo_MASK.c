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
struct buf {int b_xflags; int /*<<< orphan*/  b_flags; int /*<<< orphan*/ * b_bufobj; int /*<<< orphan*/ * b_vp; } ;

/* Variables and functions */
 int BX_VNCLEAN ; 
 int BX_VNDIRTY ; 
 int /*<<< orphan*/  B_PAGING ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

void
FUNC1(struct buf *bp)
{

	FUNC0(bp->b_vp == NULL, ("pbrelbo: vnode"));
	FUNC0(bp->b_bufobj != NULL, ("pbrelbo: NULL bufobj"));
	FUNC0((bp->b_xflags & (BX_VNDIRTY | BX_VNCLEAN)) == 0,
	    ("pbrelbo: pager buf on vnode list."));

	bp->b_bufobj = NULL;
	bp->b_flags &= ~B_PAGING;
}
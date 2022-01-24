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
struct bufv {int /*<<< orphan*/  bv_cnt; int /*<<< orphan*/  bv_hd; int /*<<< orphan*/  bv_root; } ;
struct buf {int b_xflags; int /*<<< orphan*/  b_lblkno; TYPE_1__* b_bufobj; } ;
struct TYPE_2__ {struct bufv bo_clean; struct bufv bo_dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int BX_VNCLEAN ; 
 int BX_VNDIRTY ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b_bobufs ; 

__attribute__((used)) static void
FUNC4(struct buf *bp)
{
	struct bufv *bv;

	FUNC2(bp->b_bufobj != NULL, ("No b_bufobj %p", bp));
	FUNC0(bp->b_bufobj);
	FUNC2((bp->b_xflags & (BX_VNDIRTY|BX_VNCLEAN)) !=
	    (BX_VNDIRTY|BX_VNCLEAN),
	    ("buf_vlist_remove: Buf %p is on two lists", bp));
	if (bp->b_xflags & BX_VNDIRTY)
		bv = &bp->b_bufobj->bo_dirty;
	else
		bv = &bp->b_bufobj->bo_clean;
	FUNC1(&bv->bv_root, bp->b_lblkno);
	FUNC3(&bv->bv_hd, bp, b_bobufs);
	bv->bv_cnt--;
	bp->b_xflags &= ~(BX_VNDIRTY | BX_VNCLEAN);
}
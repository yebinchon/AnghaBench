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
struct bufv {scalar_t__ bv_cnt; int /*<<< orphan*/  bv_root; int /*<<< orphan*/  bv_hd; } ;
struct bufobj {int bo_flag; struct bufv bo_clean; struct bufv bo_dirty; } ;
struct buf {int b_xflags; int /*<<< orphan*/  b_lblkno; } ;
typedef  int b_xflags_t ;
struct TYPE_2__ {int /*<<< orphan*/  b_lblkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int BO_DEAD ; 
 int FUNC1 (int /*<<< orphan*/ *,struct buf*) ; 
 struct buf* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int BX_VNCLEAN ; 
 int BX_VNDIRTY ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct buf*,struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct buf*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  b_bobufs ; 
 int /*<<< orphan*/  buflists ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(struct buf *bp, struct bufobj *bo, b_xflags_t xflags)
{
	struct bufv *bv;
	struct buf *n;
	int error;

	FUNC0(bo);
	FUNC3((xflags & BX_VNDIRTY) == 0 || (bo->bo_flag & BO_DEAD) == 0,
	    ("dead bo %p", bo));
	FUNC3((bp->b_xflags & (BX_VNDIRTY|BX_VNCLEAN)) == 0,
	    ("buf_vlist_add: Buf %p has existing xflags %d", bp, bp->b_xflags));
	bp->b_xflags |= xflags;
	if (xflags & BX_VNDIRTY)
		bv = &bo->bo_dirty;
	else
		bv = &bo->bo_clean;

	/*
	 * Keep the list ordered.  Optimize empty list insertion.  Assume
	 * we tend to grow at the tail so lookup_le should usually be cheaper
	 * than _ge. 
	 */
	if (bv->bv_cnt == 0 ||
	    bp->b_lblkno > FUNC7(&bv->bv_hd, buflists)->b_lblkno)
		FUNC6(&bv->bv_hd, bp, b_bobufs);
	else if ((n = FUNC2(&bv->bv_root, bp->b_lblkno)) == NULL)
		FUNC5(&bv->bv_hd, bp, b_bobufs);
	else
		FUNC4(&bv->bv_hd, n, bp, b_bobufs);
	error = FUNC1(&bv->bv_root, bp);
	if (error)
		FUNC8("buf_vlist_add:  Preallocated nodes insufficient.");
	bv->bv_cnt++;
}
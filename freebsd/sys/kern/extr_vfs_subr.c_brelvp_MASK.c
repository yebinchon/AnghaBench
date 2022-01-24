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
struct vnode {int dummy; } ;
struct TYPE_2__ {scalar_t__ bv_cnt; } ;
struct bufobj {int bo_flag; TYPE_1__ bo_dirty; } ;
struct buf {int b_xflags; struct bufobj* b_bufobj; struct vnode* b_vp; int /*<<< orphan*/  b_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int BO_ONWORKLST ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 int BX_VNCLEAN ; 
 int BX_VNDIRTY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,struct buf*,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  KTR_BUF ; 
 int /*<<< orphan*/  FUNC4 (struct bufobj*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bo_synclist ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct buf*) ; 
 int /*<<< orphan*/  sync_mtx ; 
 int /*<<< orphan*/  syncer_worklist_len ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 

void
FUNC10(struct buf *bp)
{
	struct bufobj *bo;
	struct vnode *vp;

	FUNC2(KTR_BUF, "brelvp(%p) vp %p flags %X", bp, bp->b_vp, bp->b_flags);
	FUNC3(bp->b_vp != NULL, ("brelvp: NULL"));

	/*
	 * Delete from old vnode list, if on one.
	 */
	vp = bp->b_vp;		/* XXX */
	bo = bp->b_bufobj;
	FUNC0(bo);
	if (bp->b_xflags & (BX_VNDIRTY | BX_VNCLEAN))
		FUNC5(bp);
	else
		FUNC8("brelvp: Buffer %p not on queue.", bp);
	if ((bo->bo_flag & BO_ONWORKLST) && bo->bo_dirty.bv_cnt == 0) {
		bo->bo_flag &= ~BO_ONWORKLST;
		FUNC6(&sync_mtx);
		FUNC4(bo, bo_synclist);
		syncer_worklist_len--;
		FUNC7(&sync_mtx);
	}
	bp->b_vp = NULL;
	bp->b_bufobj = NULL;
	FUNC1(bo);
	FUNC9(vp);
}
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
struct bufobj {int dummy; } ;
struct vnode {struct bufobj v_bufobj; } ;
struct buf {int b_xflags; struct bufobj* b_bufobj; struct vnode* b_vp; int /*<<< orphan*/  b_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int BX_VNCLEAN ; 
 int BX_VNDIRTY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct buf*,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KTR_BUF ; 
 int /*<<< orphan*/  FUNC2 (int,struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*,struct bufobj*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*) ; 

void
FUNC5(struct vnode *vp, struct buf *bp)
{
	struct bufobj *bo;

	bo = &vp->v_bufobj;
	FUNC0(bo);
	FUNC2(bp->b_vp == NULL, bp->b_vp, ("bgetvp: not free"));

	FUNC1(KTR_BUF, "bgetvp(%p) vp %p flags %X", bp, vp, bp->b_flags);
	FUNC2((bp->b_xflags & (BX_VNDIRTY|BX_VNCLEAN)) == 0, vp,
	    ("bgetvp: bp already attached! %p", bp));

	FUNC4(vp);
	bp->b_vp = vp;
	bp->b_bufobj = bo;
	/*
	 * Insert onto list for new vnode.
	 */
	FUNC3(bp, bo, BX_VNCLEAN);
}
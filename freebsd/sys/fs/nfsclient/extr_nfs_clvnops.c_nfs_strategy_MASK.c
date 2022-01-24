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
struct vop_strategy_args {struct vnode* a_vp; struct buf* a_bp; } ;
struct TYPE_2__ {int bo_bsize; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_mount; TYPE_1__ v_bufobj; } ;
struct ucred {int dummy; } ;
struct buf {int b_flags; int b_blkno; int b_lblkno; scalar_t__ b_iocmd; struct ucred* b_wcred; struct ucred* b_rcred; struct vnode* b_vp; } ;

/* Variables and functions */
 scalar_t__ BIO_READ ; 
 int B_ASYNC ; 
 int B_DONE ; 
 int DEV_BSIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VREG ; 
 int /*<<< orphan*/  curthread ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,struct buf*,struct ucred*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct vop_strategy_args *ap)
{
	struct buf *bp;
	struct vnode *vp;
	struct ucred *cr;

	bp = ap->a_bp;
	vp = ap->a_vp;
	FUNC0(bp->b_vp == vp, ("missing b_getvp"));
	FUNC0(!(bp->b_flags & B_DONE),
	    ("nfs_strategy: buffer %p unexpectedly marked B_DONE", bp));

	if (vp->v_type == VREG && bp->b_blkno == bp->b_lblkno)
		bp->b_blkno = bp->b_lblkno * (vp->v_bufobj.bo_bsize /
		    DEV_BSIZE);
	if (bp->b_iocmd == BIO_READ)
		cr = bp->b_rcred;
	else
		cr = bp->b_wcred;

	/*
	 * If the op is asynchronous and an i/o daemon is waiting
	 * queue the request, wake it up and wait for completion
	 * otherwise just do it ourselves.
	 */
	if ((bp->b_flags & B_ASYNC) == 0 ||
	    FUNC2(FUNC1(vp->v_mount), bp, NOCRED, curthread))
		(void) FUNC3(vp, bp, cr, curthread, 1);
	return (0);
}
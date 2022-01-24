#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vop_strategy_args {struct vnode* a_vp; struct buf* a_bp; } ;
struct vnode {scalar_t__ v_type; int /*<<< orphan*/  v_mount; } ;
struct bufobj {int dummy; } ;
struct buf {scalar_t__ b_blkno; scalar_t__ b_lblkno; int b_error; int /*<<< orphan*/  b_iooffset; int /*<<< orphan*/  b_ioflags; } ;
typedef  scalar_t__ daddr_t ;
struct TYPE_4__ {struct bufobj* um_bo; } ;
struct TYPE_3__ {int i_flag; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct bufobj*,struct buf*) ; 
 int IN_E4EXTENTS ; 
 scalar_t__ VBLK ; 
 scalar_t__ VCHR ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (struct vnode*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vnode*,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct buf*) ; 

__attribute__((used)) static int
FUNC9(struct vop_strategy_args *ap)
{
	struct buf *bp = ap->a_bp;
	struct vnode *vp = ap->a_vp;
	struct bufobj *bo;
	daddr_t blkno;
	int error;

	if (vp->v_type == VBLK || vp->v_type == VCHR)
		FUNC7("ext2_strategy: spec");
	if (bp->b_blkno == bp->b_lblkno) {

		if (FUNC2(ap->a_vp)->i_flag & IN_E4EXTENTS)
			error = FUNC6(vp, bp->b_lblkno, &blkno, NULL, NULL);
		else
			error = FUNC5(vp, bp->b_lblkno, &blkno, NULL, NULL);

		bp->b_blkno = blkno;
		if (error) {
			bp->b_error = error;
			bp->b_ioflags |= BIO_ERROR;
			FUNC3(bp);
			return (0);
		}
		if ((long)bp->b_blkno == -1)
			FUNC8(bp);
	}
	if ((long)bp->b_blkno == -1) {
		FUNC3(bp);
		return (0);
	}
	bp->b_iooffset = FUNC4(bp->b_blkno);
	bo = FUNC1(vp->v_mount)->um_bo;
	FUNC0(bo, bp);
	return (0);
}
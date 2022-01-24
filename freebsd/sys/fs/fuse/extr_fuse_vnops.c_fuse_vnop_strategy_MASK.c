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
struct vop_strategy_args {struct buf* a_bp; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct buf {int /*<<< orphan*/  b_error; int /*<<< orphan*/  b_ioflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,struct buf*) ; 
 scalar_t__ FUNC2 (struct vnode*) ; 

__attribute__((used)) static int
FUNC3(struct vop_strategy_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct buf *bp = ap->a_bp;

	if (!vp || FUNC2(vp)) {
		bp->b_ioflags |= BIO_ERROR;
		bp->b_error = ENXIO;
		FUNC0(bp);
		return 0;
	}

	/*
	 * VOP_STRATEGY always returns zero and signals error via bp->b_ioflags.
	 * fuse_io_strategy sets bp's error fields
	 */
	(void)FUNC1(vp, bp);

	return 0;
}
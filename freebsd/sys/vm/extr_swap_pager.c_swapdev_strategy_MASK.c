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
struct vnode {int /*<<< orphan*/  v_bufobj; } ;
struct swdevt {struct vnode* sw_id; scalar_t__ sw_first; } ;
struct buf {scalar_t__ b_iocmd; scalar_t__ b_blkno; int /*<<< orphan*/  b_iooffset; struct vnode* b_vp; int /*<<< orphan*/ * b_bufobj; } ;

/* Variables and functions */
 scalar_t__ BIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct buf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*) ; 

__attribute__((used)) static void
FUNC6(struct buf *bp, struct swdevt *sp)
{
	struct vnode *vp2;

	bp->b_blkno = FUNC3(bp->b_blkno - sp->sw_first);

	vp2 = sp->sw_id;
	FUNC5(vp2);
	if (bp->b_iocmd == BIO_WRITE) {
		if (bp->b_bufobj)
			FUNC1(bp->b_bufobj);
		FUNC2(&vp2->v_bufobj);
	}
	if (bp->b_bufobj != &vp2->v_bufobj)
		bp->b_bufobj = &vp2->v_bufobj;
	bp->b_vp = vp2;
	bp->b_iooffset = FUNC4(bp->b_blkno);
	FUNC0(bp);
	return;
}
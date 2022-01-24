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
struct vop_strategy_args {int /*<<< orphan*/  a_vp; struct buf* a_bp; } ;
struct denode {TYPE_1__* de_pmp; } ;
struct bufobj {int dummy; } ;
struct buf {int b_blkno; int b_lblkno; int b_error; int /*<<< orphan*/  b_iooffset; int /*<<< orphan*/  b_ioflags; } ;
typedef  int daddr_t ;
struct TYPE_2__ {struct bufobj* pm_bo; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct bufobj*,struct buf*) ; 
 struct denode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct denode*,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 

__attribute__((used)) static int
FUNC6(struct vop_strategy_args *ap)
{
	struct buf *bp = ap->a_bp;
	struct denode *dep = FUNC1(ap->a_vp);
	struct bufobj *bo;
	int error = 0;
	daddr_t blkno;

	/*
	 * If we don't already know the filesystem relative block number
	 * then get it using pcbmap().  If pcbmap() returns the block
	 * number as -1 then we've got a hole in the file.  DOS filesystems
	 * don't allow files with holes, so we shouldn't ever see this.
	 */
	if (bp->b_blkno == bp->b_lblkno) {
		error = FUNC4(dep, bp->b_lblkno, &blkno, 0, 0);
		bp->b_blkno = blkno;
		if (error) {
			bp->b_error = error;
			bp->b_ioflags |= BIO_ERROR;
			FUNC2(bp);
			return (0);
		}
		if ((long)bp->b_blkno == -1)
			FUNC5(bp);
	}
	if (bp->b_blkno == -1) {
		FUNC2(bp);
		return (0);
	}
	/*
	 * Read/write the block from/to the disk that contains the desired
	 * file block.
	 */
	bp->b_iooffset = FUNC3(bp->b_blkno);
	bo = dep->de_pmp->pm_bo;
	FUNC0(bo, bp);
	return (0);
}
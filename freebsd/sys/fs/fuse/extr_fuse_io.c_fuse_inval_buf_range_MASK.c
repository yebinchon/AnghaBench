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
struct vnode {int dummy; } ;
struct buf {int b_flags; int b_dirtyend; int b_error; int b_dirtyoff; } ;
typedef  int off_t ;
typedef  int daddr_t ;

/* Variables and functions */
 int B_CACHE ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  PCATCH ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int FUNC4 (struct vnode*) ; 
 struct buf* FUNC5 (struct vnode*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct vnode*,int,int,int) ; 

__attribute__((used)) static int
FUNC8(struct vnode *vp, off_t filesize, off_t start, off_t end)
{
	struct buf *bp;
	daddr_t left_lbn, end_lbn, right_lbn;
	off_t new_filesize;
	int iosize, left_on, right_on, right_blksize;

	iosize = FUNC4(vp);
	left_lbn = start / iosize;
	end_lbn = FUNC6(end, iosize);
	left_on = start & (iosize - 1);
	if (left_on != 0) {
		bp = FUNC5(vp, left_lbn, iosize, PCATCH, 0, 0);
		if ((bp->b_flags & B_CACHE) != 0 && bp->b_dirtyend >= left_on) {
			/* 
			 * Flush the dirty buffer, because we don't have a
			 * byte-granular way to record which parts of the
			 * buffer are valid.
			 */
			FUNC3(bp);
			if (bp->b_error)
				return (bp->b_error);
		} else {
			FUNC2(bp);
		}
	}
	right_on = end & (iosize - 1);
	if (right_on != 0) {
		right_lbn = end / iosize;
		new_filesize = FUNC0(filesize, end);
		right_blksize = FUNC1(iosize, new_filesize - iosize * right_lbn);
		bp = FUNC5(vp, right_lbn, right_blksize, PCATCH, 0, 0);
		if ((bp->b_flags & B_CACHE) != 0 && bp->b_dirtyoff < right_on) {
			/* 
			 * Flush the dirty buffer, because we don't have a
			 * byte-granular way to record which parts of the
			 * buffer are valid.
			 */
			FUNC3(bp);
			if (bp->b_error)
				return (bp->b_error);
		} else {
			FUNC2(bp);
		}
	}

	FUNC7(vp, left_lbn, end_lbn, iosize);
	return (0);
}
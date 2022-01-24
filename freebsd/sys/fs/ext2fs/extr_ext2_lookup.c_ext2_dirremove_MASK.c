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
struct inode {scalar_t__ i_count; scalar_t__ i_offset; int i_flag; } ;
struct ext2fs_direct_2 {int e2d_reclen; scalar_t__ e2d_ino; } ;
struct componentname {int dummy; } ;
struct buf {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vnode*) ; 
 int IN_CHANGE ; 
 int IN_UPDATE ; 
 struct inode* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int FUNC3 (struct buf*) ; 
 int FUNC4 (struct vnode*,int /*<<< orphan*/ ,char**,struct buf**) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct ext2fs_direct_2*) ; 

int
FUNC6(struct vnode *dvp, struct componentname *cnp)
{
	struct inode *dp;
	struct ext2fs_direct_2 *ep, *rep;
	struct buf *bp;
	int error;

	dp = FUNC1(dvp);
	if (dp->i_count == 0) {
		/*
		 * First entry in block: set d_ino to zero.
		 */
		if ((error =
		    FUNC4(dvp, (off_t)dp->i_offset, (char **)&ep,
		    &bp)) != 0)
			return (error);
		ep->e2d_ino = 0;
		FUNC5(dp, (struct ext2fs_direct_2 *)bp->b_data);
		error = FUNC3(bp);
		dp->i_flag |= IN_CHANGE | IN_UPDATE;
		return (error);
	}
	/*
	 * Collapse new free space into previous entry.
	 */
	if ((error = FUNC4(dvp, (off_t)(dp->i_offset - dp->i_count),
	    (char **)&ep, &bp)) != 0)
		return (error);

	/* Set 'rep' to the entry being removed. */
	if (dp->i_count == 0)
		rep = ep;
	else
		rep = (struct ext2fs_direct_2 *)((char *)ep + ep->e2d_reclen);
	ep->e2d_reclen += rep->e2d_reclen;
	FUNC5(dp, (struct ext2fs_direct_2 *)bp->b_data);
	if (FUNC0(dvp) && dp->i_count != 0)
		FUNC2(bp);
	else
		error = FUNC3(bp);
	dp->i_flag |= IN_CHANGE | IN_UPDATE;
	return (error);
}
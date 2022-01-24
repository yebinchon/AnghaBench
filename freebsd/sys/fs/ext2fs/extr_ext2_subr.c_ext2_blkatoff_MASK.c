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
struct m_ext2fs {int dummy; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct buf {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  e2fs_lbn_t ;

/* Variables and functions */
 int /*<<< orphan*/  NOCRED ; 
 struct inode* FUNC0 (struct vnode*) ; 
 int FUNC1 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct m_ext2fs*,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vnode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int FUNC5 (struct inode*,struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 

int
FUNC7(struct vnode *vp, off_t offset, char **res, struct buf **bpp)
{
	struct inode *ip;
	struct m_ext2fs *fs;
	struct buf *bp;
	e2fs_lbn_t lbn;
	int error, bsize;

	ip = FUNC0(vp);
	fs = ip->i_e2fs;
	lbn = FUNC6(fs, offset);
	bsize = FUNC2(fs, ip, lbn);

	if ((error = FUNC3(vp, lbn, bsize, NOCRED, &bp)) != 0) {
		FUNC4(bp);
		return (error);
	}
	error = FUNC5(ip, bp);
	if (error != 0) {
		FUNC4(bp);
		return (error);
	}
	if (res)
		*res = (char *)bp->b_data + FUNC1(fs, offset);

	*bpp = bp;

	return (0);
}
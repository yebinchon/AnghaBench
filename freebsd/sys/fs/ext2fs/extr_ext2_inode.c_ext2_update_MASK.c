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
struct m_ext2fs {scalar_t__ e2fs_bsize; scalar_t__ e2fs_ronly; } ;
struct inode {int i_flag; int /*<<< orphan*/  i_number; int /*<<< orphan*/  i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext2fs_dinode {int dummy; } ;
struct buf {scalar_t__ b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int FUNC2 (struct m_ext2fs*) ; 
 int IN_LAZYACCESS ; 
 int IN_LAZYMOD ; 
 int IN_MODIFIED ; 
 int /*<<< orphan*/  NOCRED ; 
 struct inode* FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 int FUNC7 (struct buf*) ; 
 int FUNC8 (struct inode*,struct ext2fs_dinode*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC10 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 

int
FUNC13(struct vnode *vp, int waitfor)
{
	struct m_ext2fs *fs;
	struct buf *bp;
	struct inode *ip;
	int error;

	FUNC0(vp, "ext2_update");
	FUNC9(vp);
	ip = FUNC3(vp);
	if ((ip->i_flag & IN_MODIFIED) == 0 && waitfor == 0)
		return (0);
	ip->i_flag &= ~(IN_LAZYACCESS | IN_LAZYMOD | IN_MODIFIED);
	fs = ip->i_e2fs;
	if (fs->e2fs_ronly)
		return (0);
	if ((error = FUNC5(ip->i_devvp,
	    FUNC10(fs, FUNC11(fs, ip->i_number)),
	    (int)fs->e2fs_bsize, NOCRED, &bp)) != 0) {
		FUNC6(bp);
		return (error);
	}
	error = FUNC8(ip, (struct ext2fs_dinode *)((char *)bp->b_data +
	    FUNC2(fs) * FUNC12(fs, ip->i_number)));
	if (error) {
		FUNC6(bp);
		return (error);
	}
	if (waitfor && !FUNC1(vp))
		return (FUNC7(bp));
	else {
		FUNC4(bp);
		return (0);
	}
}
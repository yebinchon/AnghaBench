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
typedef  int /*<<< orphan*/  uint64_t ;
struct m_ext2fs {int /*<<< orphan*/  e2fs_bsize; } ;
struct inode {int i_flag; int /*<<< orphan*/  i_vnode; int /*<<< orphan*/  i_devvp; struct m_ext2fs* i_e2fs; } ;
struct ext4_extent_path {int /*<<< orphan*/  ep_blk; scalar_t__ ep_data; } ;
struct buf {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int IN_CHANGE ; 
 int IN_UPDATE ; 
 int FUNC0 (struct buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ext4_extent_path*,struct buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 struct buf* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct inode *ip, struct ext4_extent_path *path)
{
	struct m_ext2fs *fs;
	struct buf *bp;
	uint64_t blk;
	int error;

	fs = ip->i_e2fs;

	if (!path)
		return (EINVAL);

	if (path->ep_data) {
		blk = path->ep_blk;
		bp = FUNC5(ip->i_devvp, FUNC4(fs, blk),
		    fs->e2fs_bsize, 0, 0, 0);
		if (!bp)
			return (EIO);
		FUNC3(path, bp);
		FUNC1(ip, bp->b_data);
		error = FUNC0(bp);
	} else {
		ip->i_flag |= IN_CHANGE | IN_UPDATE;
		error = FUNC2(ip->i_vnode, 1);
	}

	return (error);
}
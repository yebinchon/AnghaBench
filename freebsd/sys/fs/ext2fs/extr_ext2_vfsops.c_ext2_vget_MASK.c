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
struct vnode {int /*<<< orphan*/  v_vnlock; struct inode* v_data; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct m_ext2fs {scalar_t__ e2fs_bsize; } ;
struct inode {int i_flag; scalar_t__* i_db; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_mode; scalar_t__ i_next_alloc_goal; scalar_t__ i_next_alloc_block; int /*<<< orphan*/  i_block_group; int /*<<< orphan*/  i_number; struct ext2mount* i_ump; struct m_ext2fs* i_e2fs; struct vnode* i_vnode; } ;
struct ext2mount {int /*<<< orphan*/  um_devvp; struct m_ext2fs* um_e2fs; } ;
struct ext2fs_dinode {int dummy; } ;
struct buf {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  ino_t ;

/* Variables and functions */
 int FUNC0 (struct m_ext2fs*) ; 
 unsigned int EXT2_NDIR_BLOCKS ; 
 int IN_E4EXTENTS ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 int /*<<< orphan*/  M_EXT2NODE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  NOCRED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct ext2mount* FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 struct thread* curthread ; 
 int FUNC7 (struct ext2fs_dinode*,struct inode*) ; 
 int /*<<< orphan*/  ext2_fifoops ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct mount*,int /*<<< orphan*/ *,struct vnode**) ; 
 int /*<<< orphan*/  ext2_vnodeops ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC13 (char*,struct mount*,int /*<<< orphan*/ *,struct vnode**) ; 
 unsigned int FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct vnode*,struct mount*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct inode* FUNC20 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC21 (struct mount*,int /*<<< orphan*/ ,int,struct thread*,struct vnode**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC22 (struct vnode*,int /*<<< orphan*/ ,int,struct thread*,struct vnode**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct vnode*) ; 

__attribute__((used)) static int
FUNC24(struct mount *mp, ino_t ino, int flags, struct vnode **vpp)
{
	struct m_ext2fs *fs;
	struct inode *ip;
	struct ext2mount *ump;
	struct buf *bp;
	struct vnode *vp;
	struct thread *td;
	unsigned int i, used_blocks;
	int error;

	td = curthread;
	error = FUNC21(mp, ino, flags, td, vpp, NULL, NULL);
	if (error || *vpp != NULL)
		return (error);

	ump = FUNC3(mp);
	ip = FUNC20(sizeof(struct inode), M_EXT2NODE, M_WAITOK | M_ZERO);

	/* Allocate a new vnode/inode. */
	if ((error = FUNC13("ext2fs", mp, &ext2_vnodeops, &vp)) != 0) {
		*vpp = NULL;
		FUNC11(ip, M_EXT2NODE);
		return (error);
	}
	vp->v_data = ip;
	ip->i_vnode = vp;
	ip->i_e2fs = fs = ump->um_e2fs;
	ip->i_ump = ump;
	ip->i_number = ino;

	FUNC19(vp->v_vnlock, LK_EXCLUSIVE, NULL);
	error = FUNC18(vp, mp);
	if (error != 0) {
		FUNC11(ip, M_EXT2NODE);
		*vpp = NULL;
		return (error);
	}
	error = FUNC22(vp, ino, flags, td, vpp, NULL, NULL);
	if (error || *vpp != NULL)
		return (error);

	/* Read in the disk contents for the inode, copy into the inode. */
	if ((error = FUNC5(ump->um_devvp, FUNC12(fs, FUNC16(fs, ino)),
	    (int)fs->e2fs_bsize, NOCRED, &bp)) != 0) {
		/*
		 * The inode does not contain anything useful, so it would
		 * be misleading to leave it on its hash chain. With mode
		 * still zero, it will be unlinked and returned to the free
		 * list by vput().
		 */
		FUNC6(bp);
		FUNC23(vp);
		*vpp = NULL;
		return (error);
	}
	/* convert ext2 inode to dinode */
	error = FUNC7((struct ext2fs_dinode *)((char *)bp->b_data +
	    FUNC0(fs) * FUNC17(fs, ino)), ip);
	if (error) {
		FUNC6(bp);
		FUNC23(vp);
		*vpp = NULL;
		return (error);
	}
	ip->i_block_group = FUNC15(fs, ino);
	ip->i_next_alloc_block = 0;
	ip->i_next_alloc_goal = 0;

	/*
	 * Now we want to make sure that block pointers for unused
	 * blocks are zeroed out - ext2_balloc depends on this
	 * although for regular files and directories only
	 *
	 * If IN_E4EXTENTS is enabled, unused blocks are not zeroed
	 * out because we could corrupt the extent tree.
	 */
	if (!(ip->i_flag & IN_E4EXTENTS) &&
	    (FUNC1(ip->i_mode) || FUNC2(ip->i_mode))) {
		used_blocks = FUNC14(ip->i_size, fs->e2fs_bsize);
		for (i = used_blocks; i < EXT2_NDIR_BLOCKS; i++)
			ip->i_db[i] = 0;
	}
#ifdef EXT2FS_PRINT_EXTENTS
	ext2_print_inode(ip);
	ext4_ext_print_extent_tree_status(ip);
#endif
	FUNC4(bp);

	/*
	 * Initialize the vnode from the inode, check for aliases.
	 * Note that the underlying vnode may have changed.
	 */
	if ((error = FUNC9(mp, &ext2_fifoops, &vp)) != 0) {
		FUNC23(vp);
		*vpp = NULL;
		return (error);
	}

	/*
	 * Finish inode initialization.
	 */

	*vpp = vp;
	return (0);
}
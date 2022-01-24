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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint16_t ;
struct ucred {int dummy; } ;
struct m_ext2fs {int /*<<< orphan*/  e2fs_bsize; } ;
struct inode {int /*<<< orphan*/  i_devvp; struct m_ext2fs* i_e2fs; scalar_t__ i_next_alloc_goal; int /*<<< orphan*/  i_next_alloc_block; int /*<<< orphan*/  i_mode; } ;
struct ext4_extent_path {struct ext4_extent* ep_ext; } ;
struct ext4_extent {scalar_t__ e_blk; scalar_t__ e_len; } ;
struct buf {int dummy; } ;
typedef  scalar_t__ e4fs_daddr_t ;
typedef  scalar_t__ daddr_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ EXT4_EXT_CACHE_IN ; 
 scalar_t__ EXT4_MAX_LEN ; 
 int /*<<< orphan*/  M_EXT2EXTENTS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*,struct buf**) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 scalar_t__ FUNC3 (struct inode*,struct ext4_extent_path*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ext4_extent_path*) ; 
 scalar_t__ FUNC5 (struct ext4_extent*) ; 
 int FUNC6 (struct inode*,scalar_t__,struct ext4_extent_path**) ; 
 scalar_t__ FUNC7 (struct inode*,scalar_t__,struct ext4_extent*) ; 
 int FUNC8 (struct inode*) ; 
 int FUNC9 (struct inode*,struct ext4_extent_path*,struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,scalar_t__,unsigned long,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_extent*,scalar_t__) ; 
 scalar_t__ FUNC12 (struct inode*,scalar_t__,scalar_t__,struct ucred*,unsigned long*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct ext4_extent_path*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct m_ext2fs*,scalar_t__) ; 

int
FUNC15(struct inode *ip, e4fs_daddr_t iblk,
    unsigned long max_blocks, struct ucred *cred, struct buf **bpp,
    int *pallocated, daddr_t *nb)
{
	struct m_ext2fs *fs;
	struct buf *bp = NULL;
	struct ext4_extent_path *path;
	struct ext4_extent newex, *ex;
	e4fs_daddr_t bpref, newblk = 0;
	unsigned long allocated = 0;
	int error = 0, depth;

	if(bpp)
		*bpp = NULL;
	*pallocated = 0;

	/* Check cache. */
	path = NULL;
	if ((bpref = FUNC7(ip, iblk, &newex))) {
		if (bpref == EXT4_EXT_CACHE_IN) {
			/* Block is already allocated. */
			newblk = iblk - newex.e_blk +
			    FUNC5(&newex);
			allocated = newex.e_len - (iblk - newex.e_blk);
			goto out;
		} else {
			error = EIO;
			goto out2;
		}
	}

	error = FUNC6(ip, iblk, &path);
	if (error) {
		goto out2;
	}

	depth = FUNC8(ip);
	if (path[depth].ep_ext == NULL && depth != 0) {
		error = EIO;
		goto out2;
	}

	if ((ex = path[depth].ep_ext)) {
		uint64_t lblk = ex->e_blk;
		uint16_t e_len  = ex->e_len;
		e4fs_daddr_t e_start = FUNC5(ex);

		if (e_len > EXT4_MAX_LEN)
			goto out2;

		/* If we found extent covers block, simply return it. */
		if (iblk >= lblk && iblk < lblk + e_len) {
			newblk = iblk - lblk + e_start;
			allocated = e_len - (iblk - lblk);
			FUNC10(ip, lblk, e_len,
			    e_start, EXT4_EXT_CACHE_IN);
			goto out;
		}
	}

	/* Allocate the new block. */
	if (FUNC0(ip->i_mode) && (!ip->i_next_alloc_block)) {
		ip->i_next_alloc_goal = 0;
	}

	bpref = FUNC3(ip, path, iblk);
	allocated = max_blocks;
	newblk = FUNC12(ip, iblk, bpref, cred, &allocated, &error);
	if (!newblk)
		goto out2;

	/* Try to insert new extent into found leaf and return. */
	newex.e_blk = iblk;
	FUNC11(&newex, newblk);
	newex.e_len = allocated;
	error = FUNC9(ip, path, &newex);
	if (error)
		goto out2;

	newblk = FUNC5(&newex);
	FUNC10(ip, iblk, allocated, newblk, EXT4_EXT_CACHE_IN);
	*pallocated = 1;

out:
	if (allocated > max_blocks)
		allocated = max_blocks;

	if (bpp)
	{
		fs = ip->i_e2fs;
		error = FUNC1(ip->i_devvp, FUNC14(fs, newblk),
		    fs->e2fs_bsize, cred, &bp);
		if (error) {
			FUNC2(bp);
		} else {
			*bpp = bp;
		}
	}

out2:
	if (path) {
		FUNC4(path);
		FUNC13(path, M_EXT2EXTENTS);
	}

	if (nb)
		*nb = newblk;

	return (error);
}
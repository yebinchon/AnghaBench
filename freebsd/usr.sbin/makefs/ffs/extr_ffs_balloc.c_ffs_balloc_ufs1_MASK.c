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
struct inode {scalar_t__ i_ffs1_size; scalar_t__* i_ffs1_db; scalar_t__* i_ffs1_ib; int /*<<< orphan*/  i_devvp; struct fs* i_fs; } ;
struct indir {size_t in_off; scalar_t__ in_lbn; } ;
struct fs {int fs_bsize; } ;
struct buf {void* b_blkno; scalar_t__ b_data; } ;
typedef  scalar_t__ off_t ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ daddr_t ;

/* Variables and functions */
 int EFBIG ; 
 int FUNC0 (struct fs*) ; 
 scalar_t__ UFS_NDADDR ; 
 int /*<<< orphan*/  UFS_NIADDR ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct fs*,scalar_t__) ; 
 int FUNC4 (struct fs*,struct inode*,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *,struct buf**) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 int FUNC7 (struct buf*) ; 
 int /*<<< orphan*/  FUNC8 (struct buf*) ; 
 int FUNC9 (struct inode*,scalar_t__,scalar_t__,int,scalar_t__*) ; 
 scalar_t__ FUNC10 (struct inode*,scalar_t__,int,scalar_t__*) ; 
 int FUNC11 (struct fs*,int) ; 
 void* FUNC12 (struct fs*,scalar_t__) ; 
 struct buf* FUNC13 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct fs*,scalar_t__) ; 
 scalar_t__ FUNC15 (struct fs*,scalar_t__) ; 
 int FUNC16 (struct inode*,scalar_t__,struct indir*,int*) ; 
 scalar_t__ FUNC17 (scalar_t__,int const) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

__attribute__((used)) static int
FUNC19(struct inode *ip, off_t offset, int bufsize, struct buf **bpp)
{
	daddr_t lbn, lastlbn;
	int size;
	int32_t nb;
	struct buf *bp, *nbp;
	struct fs *fs = ip->i_fs;
	struct indir indirs[UFS_NIADDR + 2];
	daddr_t newb, pref;
	int32_t *bap;
	int osize, nsize, num, i, error;
	int32_t *allocblk, allociblk[UFS_NIADDR + 1];
	int32_t *allocib;
	const int needswap = FUNC0(fs);

	lbn = FUNC14(fs, offset);
	size = FUNC3(fs, offset) + bufsize;
	if (bpp != NULL) {
		*bpp = NULL;
	}

	FUNC2(size <= fs->fs_bsize);
	if (lbn < 0)
		return (EFBIG);

	/*
	 * If the next write will extend the file into a new block,
	 * and the file is currently composed of a fragment
	 * this fragment has to be extended to be a full block.
	 */

	lastlbn = FUNC14(fs, ip->i_ffs1_size);
	if (lastlbn < UFS_NDADDR && lastlbn < lbn) {
		nb = lastlbn;
		osize = FUNC4(fs, ip, nb);
		if (osize < fs->fs_bsize && osize > 0) {
			FUNC18("need to ffs_realloccg; not supported!");
			FUNC1();
		}
	}

	/*
	 * The first UFS_NDADDR blocks are direct blocks
	 */

	if (lbn < UFS_NDADDR) {
		nb = FUNC17(ip->i_ffs1_db[lbn], needswap);
		if (nb != 0 && ip->i_ffs1_size >=
		    (uint64_t)FUNC15(fs, lbn + 1)) {

			/*
			 * The block is an already-allocated direct block
			 * and the file already extends past this block,
			 * thus this must be a whole block.
			 * Just read the block (if requested).
			 */

			if (bpp != NULL) {
				error = FUNC5(ip->i_devvp, lbn, fs->fs_bsize,
				    NULL, bpp);
				if (error) {
					FUNC6(*bpp);
					return (error);
				}
			}
			return (0);
		}
		if (nb != 0) {

			/*
			 * Consider need to reallocate a fragment.
			 */

			osize = FUNC11(fs, FUNC3(fs, ip->i_ffs1_size));
			nsize = FUNC11(fs, size);
			if (nsize <= osize) {

				/*
				 * The existing block is already
				 * at least as big as we want.
				 * Just read the block (if requested).
				 */

				if (bpp != NULL) {
					error = FUNC5(ip->i_devvp, lbn, osize,
					    NULL, bpp);
					if (error) {
						FUNC6(*bpp);
						return (error);
					}
				}
				return 0;
			} else {
				FUNC18("need to ffs_realloccg; not supported!");
				FUNC1();
			}
		} else {

			/*
			 * the block was not previously allocated,
			 * allocate a new block or fragment.
			 */

			if (ip->i_ffs1_size < (uint64_t)FUNC15(fs, lbn + 1))
				nsize = FUNC11(fs, size);
			else
				nsize = fs->fs_bsize;
			error = FUNC9(ip, lbn,
			    FUNC10(ip, lbn, (int)lbn,
				&ip->i_ffs1_db[0]),
				nsize, &newb);
			if (error)
				return (error);
			if (bpp != NULL) {
				bp = FUNC13(ip->i_devvp, lbn, nsize, 0, 0, 0);
				bp->b_blkno = FUNC12(fs, newb);
				FUNC8(bp);
				*bpp = bp;
			}
		}
		ip->i_ffs1_db[lbn] = FUNC17((int32_t)newb, needswap);
		return (0);
	}

	/*
	 * Determine the number of levels of indirection.
	 */

	pref = 0;
	if ((error = FUNC16(ip, lbn, indirs, &num)) != 0)
		return (error);

	if (num < 1) {
		FUNC18("ffs_balloc: ufs_getlbns returned indirect block");
		FUNC1();
	}

	/*
	 * Fetch the first indirect block allocating if necessary.
	 */

	--num;
	nb = FUNC17(ip->i_ffs1_ib[indirs[0].in_off], needswap);
	allocib = NULL;
	allocblk = allociblk;
	if (nb == 0) {
		pref = FUNC10(ip, lbn, 0, (int32_t *)0);
		error = FUNC9(ip, lbn, pref, (int)fs->fs_bsize, &newb);
		if (error)
			return error;
		nb = newb;
		*allocblk++ = nb;
		bp = FUNC13(ip->i_devvp, indirs[1].in_lbn, fs->fs_bsize, 0, 0, 0);
		bp->b_blkno = FUNC12(fs, nb);
		FUNC8(bp);
		/*
		 * Write synchronously so that indirect blocks
		 * never point at garbage.
		 */
		if ((error = FUNC7(bp)) != 0)
			return error;
		allocib = &ip->i_ffs1_ib[indirs[0].in_off];
		*allocib = FUNC17((int32_t)nb, needswap);
	}

	/*
	 * Fetch through the indirect blocks, allocating as necessary.
	 */

	for (i = 1;;) {
		error = FUNC5(ip->i_devvp, indirs[i].in_lbn, fs->fs_bsize,
		    NULL, &bp);
		if (error) {
			FUNC6(bp);
			return error;
		}
		bap = (int32_t *)bp->b_data;
		nb = FUNC17(bap[indirs[i].in_off], needswap);
		if (i == num)
			break;
		i++;
		if (nb != 0) {
			FUNC6(bp);
			continue;
		}
		if (pref == 0)
			pref = FUNC10(ip, lbn, 0, (int32_t *)0);
		error = FUNC9(ip, lbn, pref, (int)fs->fs_bsize, &newb);
		if (error) {
			FUNC6(bp);
			return error;
		}
		nb = newb;
		*allocblk++ = nb;
		nbp = FUNC13(ip->i_devvp, indirs[i].in_lbn, fs->fs_bsize, 0, 0, 0);
		nbp->b_blkno = FUNC12(fs, nb);
		FUNC8(nbp);
		/*
		 * Write synchronously so that indirect blocks
		 * never point at garbage.
		 */

		if ((error = FUNC7(nbp)) != 0) {
			FUNC6(bp);
			return error;
		}
		bap[indirs[i - 1].in_off] = FUNC17(nb, needswap);

		FUNC7(bp);
	}

	/*
	 * Get the data block, allocating if necessary.
	 */

	if (nb == 0) {
		pref = FUNC10(ip, lbn, indirs[num].in_off, &bap[0]);
		error = FUNC9(ip, lbn, pref, (int)fs->fs_bsize, &newb);
		if (error) {
			FUNC6(bp);
			return error;
		}
		nb = newb;
		*allocblk++ = nb;
		if (bpp != NULL) {
			nbp = FUNC13(ip->i_devvp, lbn, fs->fs_bsize, 0, 0, 0);
			nbp->b_blkno = FUNC12(fs, nb);
			FUNC8(nbp);
			*bpp = nbp;
		}
		bap[indirs[num].in_off] = FUNC17(nb, needswap);

		/*
		 * If required, write synchronously, otherwise use
		 * delayed write.
		 */
		FUNC7(bp);
		return (0);
	}
	FUNC6(bp);
	if (bpp != NULL) {
		error = FUNC5(ip->i_devvp, lbn, (int)fs->fs_bsize, NULL, &nbp);
		if (error) {
			FUNC6(nbp);
			return error;
		}
		*bpp = nbp;
	}
	return (0);
}
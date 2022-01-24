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
typedef  int /*<<< orphan*/  u_int ;
struct vnode {int dummy; } ;
struct m_ext2fs {scalar_t__ e2fs_bsize; } ;
struct inode {struct m_ext2fs* i_e2fs; } ;
struct buf {int b_flags; scalar_t__ b_bcount; scalar_t__ b_bufsize; int b_blkno; scalar_t__ b_data; int /*<<< orphan*/  b_iooffset; int /*<<< orphan*/  b_iocmd; } ;
typedef  int int32_t ;
typedef  int e4fs_daddr_t ;
typedef  int e2fs_lbn_t ;
typedef  int e2fs_daddr_t ;
typedef  int daddr_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_READ ; 
 int B_DELWRI ; 
 int B_DONE ; 
 int B_INVAL ; 
 scalar_t__ FUNC0 (struct vnode*) ; 
 struct vnode* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int FUNC2 (struct m_ext2fs*) ; 
 int SINGLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (struct buf*) ; 
 int FUNC9 (struct buf*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct m_ext2fs*,int) ; 
 struct buf* FUNC15 (struct vnode*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* FUNC16 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (struct buf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(struct inode *ip, daddr_t lbn, daddr_t dbn,
    daddr_t lastbn, int level, e4fs_daddr_t *countp)
{
	struct buf *bp;
	struct m_ext2fs *fs = ip->i_e2fs;
	struct vnode *vp;
	e2fs_daddr_t *bap, *copy;
	int i, nblocks, error = 0, allerror = 0;
	e2fs_lbn_t nb, nlbn, last;
	e4fs_daddr_t blkcount, factor, blocksreleased = 0;

	/*
	 * Calculate index in current block of last
	 * block to be kept.  -1 indicates the entire
	 * block so we need not calculate the index.
	 */
	factor = 1;
	for (i = SINGLE; i < level; i++)
		factor *= FUNC2(fs);
	last = lastbn;
	if (lastbn > 0)
		last /= factor;
	nblocks = FUNC7(fs->e2fs_bsize);
	/*
	 * Get buffer of block pointers, zero those entries corresponding
	 * to blocks to be free'd, and update on disk copy first.  Since
	 * double(triple) indirect before single(double) indirect, calls
	 * to bmap on these blocks will fail.  However, we already have
	 * the on disk address, so we have to set the b_blkno field
	 * explicitly instead of letting bread do everything for us.
	 */
	vp = FUNC1(ip);
	bp = FUNC15(vp, lbn, (int)fs->e2fs_bsize, 0, 0, 0);
	if ((bp->b_flags & (B_DONE | B_DELWRI)) == 0) {
		bp->b_iocmd = BIO_READ;
		if (bp->b_bcount > bp->b_bufsize)
			FUNC17("ext2_indirtrunc: bad buffer size");
		bp->b_blkno = dbn;
		FUNC18(bp, 0);
		bp->b_iooffset = FUNC11(bp->b_blkno);
		FUNC6(bp);
		error = FUNC8(bp);
	}
	if (error) {
		FUNC5(bp);
		*countp = 0;
		return (error);
	}
	bap = (e2fs_daddr_t *)bp->b_data;
	copy = FUNC16(fs->e2fs_bsize, M_TEMP, M_WAITOK);
	FUNC3((caddr_t)bap, (caddr_t)copy, (u_int)fs->e2fs_bsize);
	FUNC10((caddr_t)&bap[last + 1],
	    (FUNC2(fs) - (last + 1)) * sizeof(e2fs_daddr_t));
	if (last == -1)
		bp->b_flags |= B_INVAL;
	if (FUNC0(vp)) {
		FUNC4(bp);
	} else {
		error = FUNC9(bp);
		if (error)
			allerror = error;
	}
	bap = copy;

	/*
	 * Recursively free totally unused blocks.
	 */
	for (i = FUNC2(fs) - 1, nlbn = lbn + 1 - i * factor; i > last;
	    i--, nlbn += factor) {
		nb = bap[i];
		if (nb == 0)
			continue;
		if (level > SINGLE) {
			if ((error = FUNC19(ip, nlbn,
			    FUNC14(fs, nb), (int32_t)-1, level - 1, &blkcount)) != 0)
				allerror = error;
			blocksreleased += blkcount;
		}
		FUNC12(ip, nb, fs->e2fs_bsize);
		blocksreleased += nblocks;
	}

	/*
	 * Recursively free last partial block.
	 */
	if (level > SINGLE && lastbn >= 0) {
		last = lastbn % factor;
		nb = bap[i];
		if (nb != 0) {
			if ((error = FUNC19(ip, nlbn, FUNC14(fs, nb),
			    last, level - 1, &blkcount)) != 0)
				allerror = error;
			blocksreleased += blkcount;
		}
	}
	FUNC13(copy, M_TEMP);
	*countp = blocksreleased;
	return (allerror);
}
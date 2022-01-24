#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_4__ {scalar_t__ bv_cnt; } ;
struct TYPE_3__ {scalar_t__ bv_cnt; } ;
struct bufobj {TYPE_2__ bo_clean; TYPE_1__ bo_dirty; } ;
struct vnode {struct bufobj v_bufobj; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct m_ext2fs {scalar_t__ e2fs_maxfilesize; scalar_t__ e2fs_bsize; long e2fs_fsize; } ;
struct inode {scalar_t__ i_size; int i_flag; scalar_t__* i_ib; scalar_t__* i_db; int i_blocks; struct m_ext2fs* i_e2fs; } ;
struct buf {scalar_t__ b_bufsize; int /*<<< orphan*/  b_flags; scalar_t__ b_data; } ;
typedef  scalar_t__ off_t ;
typedef  int e4fs_daddr_t ;

/* Variables and functions */
 int BA_CLRBUF ; 
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 int /*<<< orphan*/  B_CLUSTEROK ; 
 scalar_t__ FUNC2 (struct vnode*) ; 
 size_t DOUBLE ; 
 int EFBIG ; 
 int EXT2_NDADDR ; 
 int EXT2_NIADDR ; 
 int IN_CHANGE ; 
 int IN_UPDATE ; 
 int IO_SYNC ; 
 int FUNC3 (struct m_ext2fs*) ; 
 size_t SINGLE ; 
 size_t TRIPLE ; 
 struct inode* FUNC4 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buf*) ; 
 int /*<<< orphan*/  FUNC7 (struct buf*) ; 
 int FUNC8 (struct m_ext2fs*,scalar_t__) ; 
 void* FUNC9 (struct m_ext2fs*,struct inode*,int) ; 
 int FUNC10 (long) ; 
 int /*<<< orphan*/  FUNC11 (struct buf*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct inode*,int,int,struct ucred*,struct buf**,int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int,long) ; 
 int FUNC15 (struct inode*,int,int /*<<< orphan*/ ,int,int,int*) ; 
 int FUNC16 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct m_ext2fs*,int) ; 
 int FUNC18 (struct m_ext2fs*,scalar_t__) ; 
 int FUNC19 (struct m_ext2fs*,long) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (struct vnode*,scalar_t__) ; 
 int FUNC22 (struct vnode*,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC23(struct vnode *vp, off_t length, int flags, struct ucred *cred,
    struct thread *td)
{
	struct vnode *ovp = vp;
	e4fs_daddr_t lastblock;
	struct inode *oip;
	e4fs_daddr_t bn, lbn, lastiblock[EXT2_NIADDR], indir_lbn[EXT2_NIADDR];
	uint32_t oldblks[EXT2_NDADDR + EXT2_NIADDR];
	uint32_t newblks[EXT2_NDADDR + EXT2_NIADDR];
	struct m_ext2fs *fs;
	struct buf *bp;
	int offset, size, level;
	e4fs_daddr_t count, nblocks, blocksreleased = 0;
	int error, i, allerror;
	off_t osize;
#ifdef INVARIANTS
	struct bufobj *bo;
#endif

	oip = FUNC4(ovp);
#ifdef INVARIANTS
	bo = &ovp->v_bufobj;
#endif

	fs = oip->i_e2fs;
	osize = oip->i_size;
	/*
	 * Lengthen the size of the file. We must ensure that the
	 * last byte of the file is allocated. Since the smallest
	 * value of osize is 0, length will be at least 1.
	 */
	if (osize < length) {
		if (length > oip->i_e2fs->e2fs_maxfilesize)
			return (EFBIG);
		FUNC21(ovp, length);
		offset = FUNC8(fs, length - 1);
		lbn = FUNC18(fs, length - 1);
		flags |= BA_CLRBUF;
		error = FUNC13(oip, lbn, offset + 1, cred, &bp, flags);
		if (error) {
			FUNC21(vp, osize);
			return (error);
		}
		oip->i_size = length;
		if (bp->b_bufsize == fs->e2fs_bsize)
			bp->b_flags |= B_CLUSTEROK;
		if (flags & IO_SYNC)
			FUNC11(bp);
		else if (FUNC2(ovp))
			FUNC7(bp);
		else
			FUNC6(bp);
		oip->i_flag |= IN_CHANGE | IN_UPDATE;
		return (FUNC16(ovp, !FUNC2(ovp)));
	}
	/*
	 * Shorten the size of the file. If the file is not being
	 * truncated to a block boundary, the contents of the
	 * partial block following the end of the file must be
	 * zero'ed in case it ever become accessible again because
	 * of subsequent file growth.
	 */
	/* I don't understand the comment above */
	offset = FUNC8(fs, length);
	if (offset == 0) {
		oip->i_size = length;
	} else {
		lbn = FUNC18(fs, length);
		flags |= BA_CLRBUF;
		error = FUNC13(oip, lbn, offset, cred, &bp, flags);
		if (error)
			return (error);
		oip->i_size = length;
		size = FUNC9(fs, oip, lbn);
		FUNC12((char *)bp->b_data + offset, (u_int)(size - offset));
		FUNC5(bp, size);
		if (bp->b_bufsize == fs->e2fs_bsize)
			bp->b_flags |= B_CLUSTEROK;
		if (flags & IO_SYNC)
			FUNC11(bp);
		else if (FUNC2(ovp))
			FUNC7(bp);
		else
			FUNC6(bp);
	}
	/*
	 * Calculate index into inode's block list of
	 * last direct and indirect blocks (if any)
	 * which we want to keep.  Lastblock is -1 when
	 * the file is truncated to 0.
	 */
	lastblock = FUNC18(fs, length + fs->e2fs_bsize - 1) - 1;
	lastiblock[SINGLE] = lastblock - EXT2_NDADDR;
	lastiblock[DOUBLE] = lastiblock[SINGLE] - FUNC3(fs);
	lastiblock[TRIPLE] = lastiblock[DOUBLE] - FUNC3(fs) * FUNC3(fs);
	nblocks = FUNC10(fs->e2fs_bsize);
	/*
	 * Update file and block pointers on disk before we start freeing
	 * blocks.  If we crash before free'ing blocks below, the blocks
	 * will be returned to the free list.  lastiblock values are also
	 * normalized to -1 for calls to ext2_indirtrunc below.
	 */
	for (level = TRIPLE; level >= SINGLE; level--) {
		oldblks[EXT2_NDADDR + level] = oip->i_ib[level];
		if (lastiblock[level] < 0) {
			oip->i_ib[level] = 0;
			lastiblock[level] = -1;
		}
	}
	for (i = 0; i < EXT2_NDADDR; i++) {
		oldblks[i] = oip->i_db[i];
		if (i > lastblock)
			oip->i_db[i] = 0;
	}
	oip->i_flag |= IN_CHANGE | IN_UPDATE;
	allerror = FUNC16(ovp, !FUNC2(ovp));

	/*
	 * Having written the new inode to disk, save its new configuration
	 * and put back the old block pointers long enough to process them.
	 * Note that we save the new block configuration so we can check it
	 * when we are done.
	 */
	for (i = 0; i < EXT2_NDADDR; i++) {
		newblks[i] = oip->i_db[i];
		oip->i_db[i] = oldblks[i];
	}
	for (i = 0; i < EXT2_NIADDR; i++) {
		newblks[EXT2_NDADDR + i] = oip->i_ib[i];
		oip->i_ib[i] = oldblks[EXT2_NDADDR + i];
	}
	oip->i_size = osize;
	error = FUNC22(ovp, length, (int)fs->e2fs_bsize);
	if (error && (allerror == 0))
		allerror = error;
	FUNC21(ovp, length);

	/*
	 * Indirect blocks first.
	 */
	indir_lbn[SINGLE] = -EXT2_NDADDR;
	indir_lbn[DOUBLE] = indir_lbn[SINGLE] - FUNC3(fs) - 1;
	indir_lbn[TRIPLE] = indir_lbn[DOUBLE] - FUNC3(fs) * FUNC3(fs) - 1;
	for (level = TRIPLE; level >= SINGLE; level--) {
		bn = oip->i_ib[level];
		if (bn != 0) {
			error = FUNC15(oip, indir_lbn[level],
			    FUNC17(fs, bn), lastiblock[level], level, &count);
			if (error)
				allerror = error;
			blocksreleased += count;
			if (lastiblock[level] < 0) {
				oip->i_ib[level] = 0;
				FUNC14(oip, bn, fs->e2fs_fsize);
				blocksreleased += nblocks;
			}
		}
		if (lastiblock[level] >= 0)
			goto done;
	}

	/*
	 * All whole direct blocks or frags.
	 */
	for (i = EXT2_NDADDR - 1; i > lastblock; i--) {
		long bsize;

		bn = oip->i_db[i];
		if (bn == 0)
			continue;
		oip->i_db[i] = 0;
		bsize = FUNC9(fs, oip, i);
		FUNC14(oip, bn, bsize);
		blocksreleased += FUNC10(bsize);
	}
	if (lastblock < 0)
		goto done;

	/*
	 * Finally, look for a change in size of the
	 * last direct block; release any frags.
	 */
	bn = oip->i_db[lastblock];
	if (bn != 0) {
		long oldspace, newspace;

		/*
		 * Calculate amount of space we're giving
		 * back as old block size minus new block size.
		 */
		oldspace = FUNC9(fs, oip, lastblock);
		oip->i_size = length;
		newspace = FUNC9(fs, oip, lastblock);
		if (newspace == 0)
			FUNC20("ext2_truncate: newspace");
		if (oldspace - newspace > 0) {
			/*
			 * Block number of space to be free'd is
			 * the old block # plus the number of frags
			 * required for the storage we're keeping.
			 */
			bn += FUNC19(fs, newspace);
			FUNC14(oip, bn, oldspace - newspace);
			blocksreleased += FUNC10(oldspace - newspace);
		}
	}
done:
#ifdef INVARIANTS
	for (level = SINGLE; level <= TRIPLE; level++)
		if (newblks[EXT2_NDADDR + level] != oip->i_ib[level])
			panic("itrunc1");
	for (i = 0; i < EXT2_NDADDR; i++)
		if (newblks[i] != oip->i_db[i])
			panic("itrunc2");
	BO_LOCK(bo);
	if (length == 0 && (bo->bo_dirty.bv_cnt != 0 ||
	    bo->bo_clean.bv_cnt != 0))
		panic("itrunc3");
	BO_UNLOCK(bo);
#endif	/* INVARIANTS */
	/*
	 * Put back the real size.
	 */
	oip->i_size = length;
	if (oip->i_blocks >= blocksreleased)
		oip->i_blocks -= blocksreleased;
	else				/* sanity */
		oip->i_blocks = 0;
	oip->i_flag |= IN_CHANGE;
	FUNC21(ovp, length);
	return (allerror);
}
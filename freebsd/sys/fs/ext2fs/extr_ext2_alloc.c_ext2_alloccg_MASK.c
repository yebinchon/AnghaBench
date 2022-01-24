#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct m_ext2fs {int e2fs_fmod; TYPE_1__* e2fs; int /*<<< orphan*/ * e2fs_gd; int /*<<< orphan*/  e2fs_fbcount; int /*<<< orphan*/  e2fs_fsmnt; scalar_t__ e2fs_bsize; } ;
struct inode {int /*<<< orphan*/  i_devvp; struct ext2mount* i_ump; struct m_ext2fs* i_e2fs; } ;
struct ext2mount {int dummy; } ;
struct buf {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  intmax_t ;
typedef  int daddr_t ;
struct TYPE_2__ {int e2fs_fpg; int e2fs_first_dblock; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2F_ROCOMPAT_GDT_CSUM ; 
 int /*<<< orphan*/  EXT2F_ROCOMPAT_METADATA_CKSUM ; 
 scalar_t__ FUNC0 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ext2mount*) ; 
 int /*<<< orphan*/  FUNC2 (struct ext2mount*) ; 
 int NBBY ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int FUNC6 (struct m_ext2fs*,int) ; 
 int FUNC7 (struct m_ext2fs*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC11 (struct m_ext2fs*,struct buf*,int) ; 
 int FUNC12 (struct m_ext2fs*,int,struct buf*) ; 
 int /*<<< orphan*/  FUNC13 (struct m_ext2fs*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct m_ext2fs*,int,struct buf*) ; 
 int FUNC15 (struct m_ext2fs*,int,struct buf*) ; 
 int FUNC16 (struct m_ext2fs*,char*,int) ; 
 int FUNC17 (char) ; 
 int FUNC18 (char) ; 
 int /*<<< orphan*/  FUNC19 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int FUNC20 (int,int) ; 
 scalar_t__ FUNC21 (char*,int) ; 
 scalar_t__ FUNC22 (char*,int) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*,int) ; 

__attribute__((used)) static daddr_t
FUNC26(struct inode *ip, int cg, daddr_t bpref, int size)
{
	struct m_ext2fs *fs;
	struct buf *bp;
	struct ext2mount *ump;
	daddr_t bno, runstart, runlen;
	int bit, loc, end, error, start;
	char *bbp;
	/* XXX ondisk32 */
	fs = ip->i_e2fs;
	ump = ip->i_ump;
	if (FUNC9(&fs->e2fs_gd[cg]) == 0)
		return (0);

	FUNC2(ump);
	error = FUNC4(ip->i_devvp, FUNC19(fs,
	    FUNC8(&fs->e2fs_gd[cg])),
	    (int)fs->e2fs_bsize, NOCRED, &bp);
	if (error)
		goto fail;

	if (FUNC0(fs, EXT2F_ROCOMPAT_GDT_CSUM) ||
	    FUNC0(fs, EXT2F_ROCOMPAT_METADATA_CKSUM)) {
		error = FUNC12(fs, cg, bp);
		if (error)
			goto fail;

		FUNC14(fs, cg, bp);
	}
	error = FUNC15(fs, cg, bp);
	if (error)
		goto fail;

	error = FUNC11(fs,bp, cg);
	if (error)
		goto fail;

	/*
	 * Check, that another thread did not not allocate the last block in this
	 * group while we were waiting for the buffer.
	 */
	if (FUNC9(&fs->e2fs_gd[cg]) == 0)
		goto fail;

	bbp = (char *)bp->b_data;

	if (FUNC6(fs, bpref) != cg)
		bpref = 0;
	if (bpref != 0) {
		bpref = FUNC7(fs, bpref);
		/*
		 * if the requested block is available, use it
		 */
		if (FUNC21(bbp, bpref)) {
			bno = bpref;
			goto gotit;
		}
	}
	/*
	 * no blocks in the requested cylinder, so take next
	 * available one in this cylinder group.
	 * first try to get 8 contigous blocks, then fall back to a single
	 * block.
	 */
	if (bpref)
		start = FUNC7(fs, bpref) / NBBY;
	else
		start = 0;
	end = FUNC20(fs->e2fs->e2fs_fpg, NBBY) - start;
retry:
	runlen = 0;
	runstart = 0;
	for (loc = start; loc < end; loc++) {
		if (bbp[loc] == (char)0xff) {
			runlen = 0;
			continue;
		}

		/* Start of a run, find the number of high clear bits. */
		if (runlen == 0) {
			bit = FUNC18(bbp[loc]);
			runlen = NBBY - bit;
			runstart = loc * NBBY + bit;
		} else if (bbp[loc] == 0) {
			/* Continue a run. */
			runlen += NBBY;
		} else {
			/*
			 * Finish the current run.  If it isn't long
			 * enough, start a new one.
			 */
			bit = FUNC17(bbp[loc]) - 1;
			runlen += bit;
			if (runlen >= 8) {
				bno = runstart;
				goto gotit;
			}

			/* Run was too short, start a new one. */
			bit = FUNC18(bbp[loc]);
			runlen = NBBY - bit;
			runstart = loc * NBBY + bit;
		}

		/* If the current run is long enough, use it. */
		if (runlen >= 8) {
			bno = runstart;
			goto gotit;
		}
	}
	if (start != 0) {
		end = start;
		start = 0;
		goto retry;
	}
	bno = FUNC16(fs, bbp, bpref);
	if (bno < 0)
		goto fail;

gotit:
#ifdef INVARIANTS
	if (isset(bbp, bno)) {
		printf("ext2fs_alloccgblk: cg=%d bno=%jd fs=%s\n",
		    cg, (intmax_t)bno, fs->e2fs_fsmnt);
		panic("ext2fs_alloccg: dup alloc");
	}
#endif
	FUNC25(bbp, bno);
	FUNC1(ump);
	FUNC13(fs, bbp, cg, bno, -1);
	fs->e2fs_fbcount--;
	FUNC10(&fs->e2fs_gd[cg],
	    FUNC9(&fs->e2fs_gd[cg]) - 1);
	fs->e2fs_fmod = 1;
	FUNC2(ump);
	FUNC14(fs, cg, bp);
	FUNC3(bp);
	return (((uint64_t)cg) * fs->e2fs->e2fs_fpg + fs->e2fs->e2fs_first_dblock + bno);

fail:
	FUNC5(bp);
	FUNC1(ump);
	return (0);
}
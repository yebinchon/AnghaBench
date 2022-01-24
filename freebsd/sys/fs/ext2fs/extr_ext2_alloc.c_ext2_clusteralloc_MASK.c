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
struct m_ext2fs {int* e2fs_maxcluster; int e2fs_contigsumsize; int e2fs_fmod; TYPE_2__* e2fs; int /*<<< orphan*/ * e2fs_gd; int /*<<< orphan*/  e2fs_fbcount; scalar_t__ e2fs_fpb; TYPE_1__* e2fs_clustersum; scalar_t__ e2fs_bsize; } ;
struct inode {int /*<<< orphan*/  i_devvp; struct ext2mount* i_ump; struct m_ext2fs* i_e2fs; } ;
struct ext2mount {int dummy; } ;
struct buf {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  int daddr_t ;
struct TYPE_4__ {int e2fs_fpg; int e2fs_first_dblock; } ;
struct TYPE_3__ {int /*<<< orphan*/ * cs_sum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ext2mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext2mount*) ; 
 int NBBY ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int FUNC5 (struct m_ext2fs*,int) ; 
 int FUNC6 (struct m_ext2fs*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct m_ext2fs*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 

__attribute__((used)) static daddr_t
FUNC15(struct inode *ip, int cg, daddr_t bpref, int len)
{
	struct m_ext2fs *fs;
	struct ext2mount *ump;
	struct buf *bp;
	char *bbp;
	int bit, error, got, i, loc, run;
	int32_t *lp;
	daddr_t bno;

	fs = ip->i_e2fs;
	ump = ip->i_ump;

	if (fs->e2fs_maxcluster[cg] < len)
		return (0);

	FUNC1(ump);
	error = FUNC3(ip->i_devvp,
	    FUNC11(fs, FUNC7(&fs->e2fs_gd[cg])),
	    (int)fs->e2fs_bsize, NOCRED, &bp);
	if (error)
		goto fail_lock;

	bbp = (char *)bp->b_data;
	FUNC0(ump);
	/*
	 * Check to see if a cluster of the needed size (or bigger) is
	 * available in this cylinder group.
	 */
	lp = &fs->e2fs_clustersum[cg].cs_sum[len];
	for (i = len; i <= fs->e2fs_contigsumsize; i++)
		if (*lp++ > 0)
			break;
	if (i > fs->e2fs_contigsumsize) {
		/*
		 * Update the cluster summary information to reflect
		 * the true maximum-sized cluster so that future cluster
		 * allocation requests can avoid reading the bitmap only
		 * to find no cluster.
		 */
		lp = &fs->e2fs_clustersum[cg].cs_sum[len - 1];
		for (i = len - 1; i > 0; i--)
			if (*lp-- > 0)
				break;
		fs->e2fs_maxcluster[cg] = i;
		goto fail;
	}
	FUNC1(ump);

	/* Search the bitmap to find a big enough cluster like in FFS. */
	if (FUNC5(fs, bpref) != cg)
		bpref = 0;
	if (bpref != 0)
		bpref = FUNC6(fs, bpref);
	loc = bpref / NBBY;
	bit = 1 << (bpref % NBBY);
	for (run = 0, got = bpref; got < fs->e2fs->e2fs_fpg; got++) {
		if ((bbp[loc] & bit) != 0)
			run = 0;
		else {
			run++;
			if (run == len)
				break;
		}
		if ((got & (NBBY - 1)) != (NBBY - 1))
			bit <<= 1;
		else {
			loc++;
			bit = 1;
		}
	}

	if (got >= fs->e2fs->e2fs_fpg)
		goto fail_lock;

	/* Allocate the cluster that we found. */
	for (i = 1; i < len; i++)
		if (!FUNC12(bbp, got - run + i))
			FUNC13("ext2_clusteralloc: map mismatch");

	bno = got - run + 1;
	if (bno >= fs->e2fs->e2fs_fpg)
		FUNC13("ext2_clusteralloc: allocated out of group");

	FUNC0(ump);
	for (i = 0; i < len; i += fs->e2fs_fpb) {
		FUNC14(bbp, bno + i);
		FUNC10(fs, bbp, cg, bno + i, -1);
		fs->e2fs_fbcount--;
		FUNC9(&fs->e2fs_gd[cg],
		    FUNC8(&fs->e2fs_gd[cg]) - 1);
	}
	fs->e2fs_fmod = 1;
	FUNC1(ump);

	FUNC2(bp);
	return (cg * fs->e2fs->e2fs_fpg + fs->e2fs->e2fs_first_dblock + bno);

fail_lock:
	FUNC0(ump);
fail:
	FUNC4(bp);
	return (0);
}
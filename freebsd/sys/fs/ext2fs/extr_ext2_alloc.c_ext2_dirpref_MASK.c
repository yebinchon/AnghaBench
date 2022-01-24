#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ u_long ;
typedef  scalar_t__ u_int ;
struct m_ext2fs {scalar_t__ e2fs_gcount; int e2fs_fbcount; scalar_t__ e2fs_total_dir; scalar_t__ e2fs_ipg; int e2fs_fsize; int e2fs_fpg; int e2fs_bsize; scalar_t__* e2fs_contigdirs; int /*<<< orphan*/ * e2fs_gd; TYPE_1__* e2fs; } ;
struct inode {int /*<<< orphan*/  i_number; struct m_ext2fs* i_e2fs; int /*<<< orphan*/  i_ump; } ;
struct TYPE_5__ {int v_vflag; } ;
struct TYPE_4__ {scalar_t__ e2fs_ficount; } ;

/* Variables and functions */
 int AFPDIR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 scalar_t__ AVGDIRSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int VV_ROOT ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_long
FUNC10(struct inode *pip)
{
	struct m_ext2fs *fs;
	int cg, prefcg, cgsize;
	uint64_t avgbfree, minbfree;
	u_int avgifree, avgndir, curdirsize;
	u_int minifree, maxndir;
	u_int mincg, minndir;
	u_int dirsize, maxcontigdirs;

	FUNC9(FUNC1(pip->i_ump), MA_OWNED);
	fs = pip->i_e2fs;

	avgifree = fs->e2fs->e2fs_ficount / fs->e2fs_gcount;
	avgbfree = fs->e2fs_fbcount / fs->e2fs_gcount;
	avgndir = fs->e2fs_total_dir / fs->e2fs_gcount;

	/*
	 * Force allocation in another cg if creating a first level dir.
	 */
	FUNC0(FUNC2(pip), "ext2fs_dirpref");
	if (FUNC2(pip)->v_vflag & VV_ROOT) {
		prefcg = FUNC3() % fs->e2fs_gcount;
		mincg = prefcg;
		minndir = fs->e2fs_ipg;
		for (cg = prefcg; cg < fs->e2fs_gcount; cg++)
			if (FUNC5(&fs->e2fs_gd[cg]) < minndir &&
			    FUNC6(&fs->e2fs_gd[cg]) >= avgifree &&
			    FUNC4(&fs->e2fs_gd[cg]) >= avgbfree) {
				mincg = cg;
				minndir = FUNC5(&fs->e2fs_gd[cg]);
			}
		for (cg = 0; cg < prefcg; cg++)
			if (FUNC5(&fs->e2fs_gd[cg]) < minndir &&
			    FUNC6(&fs->e2fs_gd[cg]) >= avgifree &&
			    FUNC4(&fs->e2fs_gd[cg]) >= avgbfree) {
				mincg = cg;
				minndir = FUNC5(&fs->e2fs_gd[cg]);
			}
		return (mincg);
	}
	/*
	 * Count various limits which used for
	 * optimal allocation of a directory inode.
	 */
	maxndir = FUNC8(avgndir + fs->e2fs_ipg / 16, fs->e2fs_ipg);
	minifree = avgifree - avgifree / 4;
	if (minifree < 1)
		minifree = 1;
	minbfree = avgbfree - avgbfree / 4;
	if (minbfree < 1)
		minbfree = 1;
	cgsize = fs->e2fs_fsize * fs->e2fs_fpg;
	dirsize = AVGDIRSIZE;
	curdirsize = avgndir ? (cgsize - avgbfree * fs->e2fs_bsize) / avgndir : 0;
	if (dirsize < curdirsize)
		dirsize = curdirsize;
	maxcontigdirs = FUNC8((avgbfree * fs->e2fs_bsize) / dirsize, 255);
	maxcontigdirs = FUNC8(maxcontigdirs, fs->e2fs_ipg / AFPDIR);
	if (maxcontigdirs == 0)
		maxcontigdirs = 1;

	/*
	 * Limit number of dirs in one cg and reserve space for
	 * regular files, but only if we have no deficit in
	 * inodes or space.
	 */
	prefcg = FUNC7(fs, pip->i_number);
	for (cg = prefcg; cg < fs->e2fs_gcount; cg++)
		if (FUNC5(&fs->e2fs_gd[cg]) < maxndir &&
		    FUNC6(&fs->e2fs_gd[cg]) >= minifree &&
		    FUNC4(&fs->e2fs_gd[cg]) >= minbfree) {
			if (fs->e2fs_contigdirs[cg] < maxcontigdirs)
				return (cg);
		}
	for (cg = 0; cg < prefcg; cg++)
		if (FUNC5(&fs->e2fs_gd[cg]) < maxndir &&
		    FUNC6(&fs->e2fs_gd[cg]) >= minifree &&
		    FUNC4(&fs->e2fs_gd[cg]) >= minbfree) {
			if (fs->e2fs_contigdirs[cg] < maxcontigdirs)
				return (cg);
		}
	/*
	 * This is a backstop when we have deficit in space.
	 */
	for (cg = prefcg; cg < fs->e2fs_gcount; cg++)
		if (FUNC6(&fs->e2fs_gd[cg]) >= avgifree)
			return (cg);
	for (cg = 0; cg < prefcg; cg++)
		if (FUNC6(&fs->e2fs_gd[cg]) >= avgifree)
			break;
	return (cg);
}
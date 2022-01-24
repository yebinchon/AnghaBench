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
struct ufsmount {int /*<<< orphan*/  um_mountp; int /*<<< orphan*/  um_devvp; struct fs* um_fs; } ;
struct fs {scalar_t__ fs_sblockloc; scalar_t__ fs_magic; int fs_old_flags; char* fs_fsmnt; int /*<<< orphan*/  fs_ckhash; scalar_t__ fs_sbsize; } ;
struct devfd {scalar_t__ waitfor; int error; scalar_t__ suspended; struct buf* sbbp; struct ufsmount* ump; } ;
struct buf {int /*<<< orphan*/  b_flags; scalar_t__ b_data; } ;
typedef  scalar_t__ off_t ;
typedef  void* caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_VALIDSUSPWRT ; 
 int FS_FLAGS_UPDATED ; 
 scalar_t__ FS_UFS1_MAGIC ; 
 scalar_t__ FS_UFS2_MAGIC ; 
 scalar_t__ MNT_WAIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SBLOCK_UFS1 ; 
 scalar_t__ SBLOCK_UFS2 ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct fs*) ; 
 int /*<<< orphan*/  FUNC7 (struct fs*,struct ufsmount*) ; 
 struct buf* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct ufsmount*,struct fs*,struct buf*) ; 

__attribute__((used)) static int
FUNC11(void *devfd, off_t loc, void *buf, int size)
{
	struct devfd *devfdp;
	struct ufsmount *ump;
	struct buf *bp;
	struct fs *fs;
	int error;

	devfdp = devfd;
	ump = devfdp->ump;
	fs = ump->um_fs;
	/*
	 * Writing the superblock summary information.
	 */
	if (loc != fs->fs_sblockloc) {
		bp = FUNC8(ump->um_devvp, FUNC4(loc), size, 0, 0, 0);
		FUNC2(buf, bp->b_data, (u_int)size);
		if (devfdp->suspended)
			bp->b_flags |= B_VALIDSUSPWRT;
		if (devfdp->waitfor != MNT_WAIT)
			FUNC1(bp);
		else if ((error = FUNC5(bp)) != 0)
			devfdp->error = error;
		return (0);
	}
	/*
	 * Writing the superblock itself. We need to do special checks for it.
	 */
	bp = devfdp->sbbp;
	if (devfdp->error != 0) {
		FUNC3(bp);
		return (devfdp->error);
	}
	if (fs->fs_magic == FS_UFS1_MAGIC && fs->fs_sblockloc != SBLOCK_UFS1 &&
	    (fs->fs_old_flags & FS_FLAGS_UPDATED) == 0) {
		FUNC9("WARNING: %s: correcting fs_sblockloc from %jd to %d\n",
		    fs->fs_fsmnt, fs->fs_sblockloc, SBLOCK_UFS1);
		fs->fs_sblockloc = SBLOCK_UFS1;
	}
	if (fs->fs_magic == FS_UFS2_MAGIC && fs->fs_sblockloc != SBLOCK_UFS2 &&
	    (fs->fs_old_flags & FS_FLAGS_UPDATED) == 0) {
		FUNC9("WARNING: %s: correcting fs_sblockloc from %jd to %d\n",
		    fs->fs_fsmnt, fs->fs_sblockloc, SBLOCK_UFS2);
		fs->fs_sblockloc = SBLOCK_UFS2;
	}
	if (FUNC0(ump->um_mountp))
		FUNC10(ump, (struct fs *)bp->b_data, bp);
	FUNC2((caddr_t)fs, bp->b_data, (u_int)fs->fs_sbsize);
	fs = (struct fs *)bp->b_data;
	FUNC7(fs, ump);
	/*
	 * Because we may have made changes to the superblock, we need to
	 * recompute its check-hash.
	 */
	fs->fs_ckhash = FUNC6(fs);
	if (devfdp->suspended)
		bp->b_flags |= B_VALIDSUSPWRT;
	if (devfdp->waitfor != MNT_WAIT)
		FUNC1(bp);
	else if ((error = FUNC5(bp)) != 0)
		devfdp->error = error;
	return (devfdp->error);
}
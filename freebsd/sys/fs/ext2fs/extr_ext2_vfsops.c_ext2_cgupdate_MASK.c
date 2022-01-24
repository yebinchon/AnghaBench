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
struct m_ext2fs {int e2fs_gdbcount; int e2fs_bsize; int e2fs_gcount; int /*<<< orphan*/ * e2fs_gd; } ;
struct ext2mount {int /*<<< orphan*/  um_devvp; struct m_ext2fs* um_e2fs; } ;
struct ext2_gd {int dummy; } ;
struct buf {scalar_t__ b_data; } ;

/* Variables and functions */
 int E2FS_REV0_GD_SIZE ; 
 int /*<<< orphan*/  EXT2F_INCOMPAT_64BIT ; 
 int /*<<< orphan*/  EXT2F_ROCOMPAT_GDT_CSUM ; 
 int /*<<< orphan*/  EXT2F_ROCOMPAT_METADATA_CKSUM ; 
 scalar_t__ FUNC0 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int MNT_WAIT ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int FUNC3 (struct buf*) ; 
 int /*<<< orphan*/  FUNC4 (struct m_ext2fs*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct m_ext2fs*) ; 
 int FUNC6 (struct ext2mount*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 struct buf* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *,int) ; 

int
FUNC10(struct ext2mount *mp, int waitfor)
{
	struct m_ext2fs *fs = mp->um_e2fs;
	struct buf *bp;
	int i, j, g_count = 0, error = 0, allerror = 0;

	allerror = FUNC6(mp, waitfor);

	/* Update gd csums */
	if (FUNC1(fs, EXT2F_ROCOMPAT_GDT_CSUM) ||
	    FUNC1(fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
		FUNC5(fs);

	for (i = 0; i < fs->e2fs_gdbcount; i++) {
		bp = FUNC8(mp->um_devvp, FUNC7(fs,
		    FUNC4(fs, i)),
		    fs->e2fs_bsize, 0, 0, 0);
		if (FUNC0(fs, EXT2F_INCOMPAT_64BIT)) {
			FUNC9(bp->b_data, &fs->e2fs_gd[
			    i * fs->e2fs_bsize / sizeof(struct ext2_gd)],
			    fs->e2fs_bsize);
		} else {
			for (j = 0; j < fs->e2fs_bsize / E2FS_REV0_GD_SIZE &&
			    g_count < fs->e2fs_gcount; j++, g_count++)
				FUNC9(bp->b_data + j * E2FS_REV0_GD_SIZE,
				    &fs->e2fs_gd[g_count], E2FS_REV0_GD_SIZE);
		}
		if (waitfor == MNT_WAIT)
			error = FUNC3(bp);
		else
			FUNC2(bp);
	}

	if (!allerror && error)
		allerror = error;
	return (allerror);
}
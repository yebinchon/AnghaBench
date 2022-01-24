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
struct m_ext2fs {int e2fs_bcount; int e2fs_rbcount; int e2fs_fbcount; struct ext2fs* e2fs; } ;
struct ext2mount {int /*<<< orphan*/  um_devvp; struct m_ext2fs* um_e2fs; } ;
struct ext2fs {int e2fs_bcount; int e2fs_rbcount; int e2fs_fbcount; int e4fs_bcount_hi; int e4fs_rbcount_hi; int e4fs_fbcount_hi; } ;
struct buf {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2F_INCOMPAT_64BIT ; 
 int /*<<< orphan*/  EXT2F_ROCOMPAT_METADATA_CKSUM ; 
 scalar_t__ FUNC0 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct m_ext2fs*,int /*<<< orphan*/ ) ; 
 int MNT_WAIT ; 
 int /*<<< orphan*/  SBLOCK ; 
 int /*<<< orphan*/  SBSIZE ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct m_ext2fs*) ; 
 struct buf* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ext2mount *mp, int waitfor)
{
	struct m_ext2fs *fs = mp->um_e2fs;
	struct ext2fs *es = fs->e2fs;
	struct buf *bp;
	int error = 0;

	es->e2fs_bcount = fs->e2fs_bcount & 0xffffffff;
	es->e2fs_rbcount = fs->e2fs_rbcount & 0xffffffff;
	es->e2fs_fbcount = fs->e2fs_fbcount & 0xffffffff;
	if (FUNC0(fs, EXT2F_INCOMPAT_64BIT)) {
		es->e4fs_bcount_hi = fs->e2fs_bcount >> 32;
		es->e4fs_rbcount_hi = fs->e2fs_rbcount >> 32;
		es->e4fs_fbcount_hi = fs->e2fs_fbcount >> 32;
	}

	if (FUNC1(fs, EXT2F_ROCOMPAT_METADATA_CKSUM))
		FUNC5(fs);

	bp = FUNC6(mp->um_devvp, SBLOCK, SBSIZE, 0, 0, 0);
	FUNC3((caddr_t)es, bp->b_data, (u_int)sizeof(struct ext2fs));
	if (waitfor == MNT_WAIT)
		error = FUNC4(bp);
	else
		FUNC2(bp);

	/*
	 * The buffers for group descriptors, inode bitmaps and block bitmaps
	 * are not busy at this point and are (hopefully) written by the
	 * usual sync mechanism. No need to write them here.
	 */
	return (error);
}
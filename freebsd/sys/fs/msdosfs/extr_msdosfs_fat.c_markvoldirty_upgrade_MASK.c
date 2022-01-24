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
typedef  size_t u_long ;
struct msdosfsmount {int pm_flags; int /*<<< orphan*/  pm_devvp; } ;
struct buf {int /*<<< orphan*/  b_flags; int /*<<< orphan*/ * b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_INVALONERR ; 
 int EROFS ; 
 scalar_t__ FUNC0 (struct msdosfsmount*) ; 
 scalar_t__ FUNC1 (struct msdosfsmount*) ; 
 size_t FUNC2 (struct msdosfsmount*,int) ; 
 int MSDOSFSMNT_RONLY ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC3 (int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ,struct buf**) ; 
 int FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct msdosfsmount*,size_t,size_t*,size_t*,size_t*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 

int
FUNC10(struct msdosfsmount *pmp, bool dirty, bool rw_upgrade)
{
	struct buf *bp;
	u_long bn, bo, bsize, byteoffset, fatval;
	int error;

	/*
	 * FAT12 does not support a "clean" bit, so don't do anything for
	 * FAT12.
	 */
	if (FUNC0(pmp))
		return (0);

	/*
	 * Can't change the bit on a read-only filesystem, except as part of
	 * ro->rw upgrade.
	 */
	if ((pmp->pm_flags & MSDOSFSMNT_RONLY) != 0 && !rw_upgrade)
		return (EROFS);

	/*
	 * Fetch the block containing the FAT entry.  It is given by the
	 * pseudo-cluster 1.
	 */
	byteoffset = FUNC2(pmp, 1);
	FUNC5(pmp, byteoffset, &bn, &bsize, &bo);
	error = FUNC3(pmp->pm_devvp, bn, bsize, NOCRED, &bp);
	if (error)
		return (error);

	/*
	 * Get the current value of the FAT entry and set/clear the relevant
	 * bit.  Dirty means clear the "clean" bit; clean means set the
	 * "clean" bit.
	 */
	if (FUNC1(pmp)) {
		/* FAT32 uses bit 27. */
		fatval = FUNC6(&bp->b_data[bo]);
		if (dirty)
			fatval &= 0xF7FFFFFF;
		else
			fatval |= 0x08000000;
		FUNC8(&bp->b_data[bo], fatval);
	} else {
		/* Must be FAT16; use bit 15. */
		fatval = FUNC7(&bp->b_data[bo]);
		if (dirty)
			fatval &= 0x7FFF;
		else
			fatval |= 0x8000;
		FUNC9(&bp->b_data[bo], fatval);
	}

	/*
	 * The concern here is that a devvp may be readonly, without reporting
	 * itself as such through the usual channels.  In that case, we'd like
	 * it if attempting to mount msdosfs rw didn't panic the system.
	 *
	 * markvoldirty is invoked as the first write on backing devvps when
	 * either msdosfs is mounted for the first time, or a ro mount is
	 * upgraded to rw.
	 *
	 * In either event, if a write error occurs dirtying the volume:
	 *   - No user data has been permitted to be written to cache yet.
	 *   - We can abort the high-level operation (mount, or ro->rw) safely.
	 *   - We don't derive any benefit from leaving a zombie dirty buf in
	 *   the cache that can not be cleaned or evicted.
	 *
	 * So, mark B_INVALONERR to have bwrite() -> brelse() detect that
	 * condition and force-invalidate our write to the block if it occurs.
	 *
	 * PR 210316 provides more context on the discovery and diagnosis of
	 * the problem, as well as earlier attempts to solve it.
	 */
	bp->b_flags |= B_INVALONERR;

	/* Write out the modified FAT block synchronously. */
	return (FUNC4(bp));
}
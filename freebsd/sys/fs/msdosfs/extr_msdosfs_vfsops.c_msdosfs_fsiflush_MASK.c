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
struct msdosfsmount {scalar_t__ pm_fsinfo; int pm_flags; int /*<<< orphan*/  pm_nxtfree; int /*<<< orphan*/  pm_freeclustercount; int /*<<< orphan*/  pm_BytesPerSec; int /*<<< orphan*/  pm_devvp; } ;
struct fsinfo {int /*<<< orphan*/  fsinxtfree; int /*<<< orphan*/  fsinfree; } ;
struct buf {scalar_t__ b_data; } ;

/* Variables and functions */
 int MNT_WAIT ; 
 int MSDOSFS_FSIMOD ; 
 int /*<<< orphan*/  FUNC0 (struct msdosfsmount*) ; 
 int /*<<< orphan*/  FUNC1 (struct msdosfsmount*) ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct buf**) ; 
 int FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct msdosfsmount *pmp, int waitfor)
{
	struct fsinfo *fp;
	struct buf *bp;
	int error;

	FUNC0(pmp);
	if (pmp->pm_fsinfo == 0 || (pmp->pm_flags & MSDOSFS_FSIMOD) == 0) {
		error = 0;
		goto unlock;
	}
	error = FUNC3(pmp->pm_devvp, pmp->pm_fsinfo, pmp->pm_BytesPerSec,
	    NOCRED, &bp);
	if (error != 0) {
		goto unlock;
	}
	fp = (struct fsinfo *)bp->b_data;
	FUNC5(fp->fsinfree, pmp->pm_freeclustercount);
	FUNC5(fp->fsinxtfree, pmp->pm_nxtfree);
	pmp->pm_flags &= ~MSDOSFS_FSIMOD;
	if (waitfor == MNT_WAIT)
		error = FUNC4(bp);
	else
		FUNC2(bp);
unlock:
	FUNC1(pmp);
	return (error);
}
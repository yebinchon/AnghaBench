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
typedef  scalar_t__ u_long ;
struct msdosfsmount {int /*<<< orphan*/  pm_bpcluster; int /*<<< orphan*/  pm_devvp; } ;
struct denode {scalar_t__ de_StartCluster; int de_Attributes; TYPE_1__* de_fc; struct msdosfsmount* de_pmp; } ;
struct buf {int b_lblkno; int b_blkno; } ;
typedef  int daddr_t ;
struct TYPE_2__ {scalar_t__ fc_frcn; scalar_t__ fc_fsrcn; } ;

/* Variables and functions */
 int ATTR_DIRECTORY ; 
 int /*<<< orphan*/  CLUST_EOFE ; 
 int /*<<< orphan*/  FUNC0 (struct denode*) ; 
 int DE_CLEAR ; 
 int E2BIG ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FAT_SET ; 
 scalar_t__ FCE_EMPTY ; 
 size_t FC_LASTFC ; 
 size_t FC_NEXTTOLASTFC ; 
 int /*<<< orphan*/  MNT_WAIT ; 
 scalar_t__ MSDOSFSROOT ; 
 int /*<<< orphan*/  FUNC1 (struct buf*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct buf*) ; 
 int FUNC4 (struct msdosfsmount*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct msdosfsmount*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct msdosfsmount*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct msdosfsmount*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct denode*,size_t,scalar_t__,scalar_t__) ; 
 struct buf* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (struct denode*,int,int*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC15(struct denode *dep, u_long count, struct buf **bpp, u_long *ncp,
    int flags)
{
	int error;
	u_long frcn;
	u_long cn, got;
	struct msdosfsmount *pmp = dep->de_pmp;
	struct buf *bp;
	daddr_t blkno;

	/*
	 * Don't try to extend the root directory
	 */
	if (dep->de_StartCluster == MSDOSFSROOT
	    && (dep->de_Attributes & ATTR_DIRECTORY)) {
#ifdef MSDOSFS_DEBUG
		printf("extendfile(): attempt to extend root directory\n");
#endif
		return (ENOSPC);
	}

	/*
	 * If the "file's last cluster" cache entry is empty, and the file
	 * is not empty, then fill the cache entry by calling pcbmap().
	 */
	if (dep->de_fc[FC_LASTFC].fc_frcn == FCE_EMPTY &&
	    dep->de_StartCluster != 0) {
		error = FUNC11(dep, 0xffff, 0, &cn, 0);
		/* we expect it to return E2BIG */
		if (error != E2BIG)
			return (error);
	}

	dep->de_fc[FC_NEXTTOLASTFC].fc_frcn =
	    dep->de_fc[FC_LASTFC].fc_frcn;
	dep->de_fc[FC_NEXTTOLASTFC].fc_fsrcn =
	    dep->de_fc[FC_LASTFC].fc_fsrcn;
	while (count > 0) {
		/*
		 * Allocate a new cluster chain and cat onto the end of the
		 * file.  If the file is empty we make de_StartCluster point
		 * to the new block.  Note that de_StartCluster being 0 is
		 * sufficient to be sure the file is empty since we exclude
		 * attempts to extend the root directory above, and the root
		 * dir is the only file with a startcluster of 0 that has
		 * blocks allocated (sort of).
		 */
		if (dep->de_StartCluster == 0)
			cn = 0;
		else
			cn = dep->de_fc[FC_LASTFC].fc_fsrcn + 1;
		error = FUNC4(pmp, cn, count, CLUST_EOFE, &cn, &got);
		if (error)
			return (error);

		count -= got;

		/*
		 * Give them the filesystem relative cluster number if they want
		 * it.
		 */
		if (ncp) {
			*ncp = cn;
			ncp = NULL;
		}

		if (dep->de_StartCluster == 0) {
			dep->de_StartCluster = cn;
			frcn = 0;
		} else {
			error = FUNC7(FAT_SET, pmp,
					 dep->de_fc[FC_LASTFC].fc_fsrcn,
					 0, cn);
			if (error) {
				FUNC5(pmp, cn, NULL);
				return (error);
			}
			frcn = dep->de_fc[FC_LASTFC].fc_frcn + 1;
		}

		/*
		 * Update the "last cluster of the file" entry in the
		 * denode's FAT cache.
		 */
		FUNC8(dep, FC_LASTFC, frcn + got - 1, cn + got - 1);

		if (flags & DE_CLEAR) {
			while (got-- > 0) {
				/*
				 * Get the buf header for the new block of the file.
				 */
				if (dep->de_Attributes & ATTR_DIRECTORY)
					bp = FUNC9(pmp->pm_devvp,
					    FUNC6(pmp, cn++),
					    pmp->pm_bpcluster, 0, 0, 0);
				else {
					bp = FUNC9(FUNC0(dep),
					    frcn++,
					    pmp->pm_bpcluster, 0, 0, 0);
					/*
					 * Do the bmap now, as in msdosfs_write
					 */
					if (FUNC11(dep,
					    bp->b_lblkno,
					    &blkno, 0, 0))
						bp->b_blkno = -1;
					if (bp->b_blkno == -1)
						FUNC10("extendfile: pcbmap");
					else
						bp->b_blkno = blkno;
				}
				FUNC3(bp);
				if (bpp) {
					*bpp = bp;
					bpp = NULL;
				} else {
					FUNC1(bp);
				}
				if (FUNC13() ||
				    FUNC2())
					FUNC14(FUNC0(dep), MNT_WAIT);
			}
		}
	}

	return (0);
}
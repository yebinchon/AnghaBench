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
typedef  scalar_t__ u_long ;
struct msdosfsmount {int pm_bpcluster; scalar_t__ pm_fatmask; int /*<<< orphan*/  pm_devvp; scalar_t__ pm_rootdirblk; int /*<<< orphan*/  pm_rootdirsize; } ;
struct denode {scalar_t__ de_StartCluster; int de_Attributes; scalar_t__ de_FileSize; struct msdosfsmount* de_pmp; } ;
struct buf {scalar_t__ b_data; } ;
typedef  scalar_t__ daddr_t ;

/* Variables and functions */
 int ATTR_DIRECTORY ; 
 scalar_t__ CLUST_RSRVD ; 
 int E2BIG ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct msdosfsmount*) ; 
 scalar_t__ FUNC1 (struct msdosfsmount*) ; 
 scalar_t__ FUNC2 (struct msdosfsmount*,scalar_t__) ; 
 int /*<<< orphan*/  FC_LASTFC ; 
 int /*<<< orphan*/  FC_LASTMAP ; 
 int FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct msdosfsmount*,scalar_t__) ; 
 scalar_t__ MSDOSFSROOT ; 
 int /*<<< orphan*/  NOCRED ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC7 (struct buf*) ; 
 scalar_t__ FUNC8 (struct msdosfsmount*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct msdosfsmount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct msdosfsmount*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct msdosfsmount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct msdosfsmount*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC13 (struct denode*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (struct denode*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 

int
FUNC17(struct denode *dep, u_long findcn, daddr_t *bnp, u_long *cnp, int *sp)
{
	int error;
	u_long i;
	u_long cn;
	u_long prevcn = 0; /* XXX: prevcn could be used unititialized */
	u_long byteoffset;
	u_long bn;
	u_long bo;
	struct buf *bp = NULL;
	u_long bp_bn = -1;
	struct msdosfsmount *pmp = dep->de_pmp;
	u_long bsize;

	FUNC5(bnp != NULL || cnp != NULL || sp != NULL);

	cn = dep->de_StartCluster;
	/*
	 * The "file" that makes up the root directory is contiguous,
	 * permanently allocated, of fixed size, and is not made up of
	 * clusters.  If the cluster number is beyond the end of the root
	 * directory, then return the number of clusters in the file.
	 */
	if (cn == MSDOSFSROOT) {
		if (dep->de_Attributes & ATTR_DIRECTORY) {
			if (FUNC11(pmp, findcn) >= dep->de_FileSize) {
				if (cnp)
					*cnp = FUNC9(pmp, pmp->pm_rootdirsize);
				return (E2BIG);
			}
			if (bnp)
				*bnp = pmp->pm_rootdirblk + FUNC10(pmp, findcn);
			if (cnp)
				*cnp = MSDOSFSROOT;
			if (sp)
				*sp = FUNC3(pmp->pm_bpcluster,
				    dep->de_FileSize - FUNC11(pmp, findcn));
			return (0);
		} else {		/* just an empty file */
			if (cnp)
				*cnp = 0;
			return (E2BIG);
		}
	}

	/*
	 * All other files do I/O in cluster sized blocks
	 */
	if (sp)
		*sp = pmp->pm_bpcluster;

	/*
	 * Rummage around in the FAT cache, maybe we can avoid tromping
	 * through every FAT entry for the file. And, keep track of how far
	 * off the cache was from where we wanted to be.
	 */
	i = 0;
	FUNC13(dep, findcn, &i, &cn);

	/*
	 * Handle all other files or directories the normal way.
	 */
	for (; i < findcn; i++) {
		/*
		 * Stop with all reserved clusters, not just with EOF.
		 */
		if ((cn | ~pmp->pm_fatmask) >= CLUST_RSRVD)
			goto hiteof;
		byteoffset = FUNC2(pmp, cn);
		FUNC12(pmp, byteoffset, &bn, &bsize, &bo);
		if (bn != bp_bn) {
			if (bp)
				FUNC7(bp);
			error = FUNC6(pmp->pm_devvp, bn, bsize, NOCRED, &bp);
			if (error) {
				FUNC7(bp);
				return (error);
			}
			bp_bn = bn;
		}
		prevcn = cn;
		if (bo >= bsize) {
			if (bp)
				FUNC7(bp);
			return (EIO);
		}
		if (FUNC1(pmp))
			cn = FUNC15(bp->b_data + bo);
		else
			cn = FUNC16(bp->b_data + bo);
		if (FUNC0(pmp) && (prevcn & 1))
			cn >>= 4;
		cn &= pmp->pm_fatmask;

		/*
		 * Force the special cluster numbers
		 * to be the same for all cluster sizes
		 * to let the rest of msdosfs handle
		 * all cases the same.
		 */
		if ((cn | ~pmp->pm_fatmask) >= CLUST_RSRVD)
			cn |= ~pmp->pm_fatmask;
	}

	if (!FUNC4(pmp, cn)) {
		if (bp)
			FUNC7(bp);
		if (bnp)
			*bnp = FUNC8(pmp, cn);
		if (cnp)
			*cnp = cn;
		FUNC14(dep, FC_LASTMAP, i, cn);
		return (0);
	}

hiteof:;
	if (cnp)
		*cnp = i;
	if (bp)
		FUNC7(bp);
	/* update last file cluster entry in the FAT cache */
	FUNC14(dep, FC_LASTFC, i - 1, prevcn);
	return (E2BIG);
}
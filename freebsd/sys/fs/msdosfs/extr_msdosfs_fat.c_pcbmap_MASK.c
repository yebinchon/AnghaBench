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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int ATTR_DIRECTORY ; 
 scalar_t__ CLUST_RSRVD ; 
 int /*<<< orphan*/  FUNC1 (struct denode*) ; 
 int E2BIG ; 
 int EIO ; 
 scalar_t__ FUNC2 (struct msdosfsmount*) ; 
 scalar_t__ FUNC3 (struct msdosfsmount*) ; 
 scalar_t__ FUNC4 (struct msdosfsmount*,scalar_t__) ; 
 int /*<<< orphan*/  FC_LASTFC ; 
 int /*<<< orphan*/  FC_LASTMAP ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct msdosfsmount*,scalar_t__) ; 
 scalar_t__ MSDOSFSROOT ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC8 (struct buf*) ; 
 scalar_t__ FUNC9 (struct msdosfsmount*,scalar_t__) ; 
 scalar_t__ FUNC10 (struct msdosfsmount*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct msdosfsmount*,scalar_t__) ; 
 scalar_t__ FUNC12 (struct msdosfsmount*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct msdosfsmount*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (struct denode*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (struct denode*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 int FUNC18 (int,scalar_t__) ; 

int
FUNC19(struct denode *dep, u_long findcn, daddr_t *bnp, u_long *cnp, int *sp)
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

	FUNC5(bnp != NULL || cnp != NULL || sp != NULL,
	    ("pcbmap: extra call"));
	FUNC0(FUNC1(dep), "pcbmap");

	cn = dep->de_StartCluster;
	/*
	 * The "file" that makes up the root directory is contiguous,
	 * permanently allocated, of fixed size, and is not made up of
	 * clusters.  If the cluster number is beyond the end of the root
	 * directory, then return the number of clusters in the file.
	 */
	if (cn == MSDOSFSROOT) {
		if (dep->de_Attributes & ATTR_DIRECTORY) {
			if (FUNC12(pmp, findcn) >= dep->de_FileSize) {
				if (cnp)
					*cnp = FUNC10(pmp, pmp->pm_rootdirsize);
				return (E2BIG);
			}
			if (bnp)
				*bnp = pmp->pm_rootdirblk + FUNC11(pmp, findcn);
			if (cnp)
				*cnp = MSDOSFSROOT;
			if (sp)
				*sp = FUNC18(pmp->pm_bpcluster,
				    dep->de_FileSize - FUNC12(pmp, findcn));
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
	FUNC14(dep, findcn, &i, &cn);

	/*
	 * Handle all other files or directories the normal way.
	 */
	for (; i < findcn; i++) {
		/*
		 * Stop with all reserved clusters, not just with EOF.
		 */
		if ((cn | ~pmp->pm_fatmask) >= CLUST_RSRVD)
			goto hiteof;
		byteoffset = FUNC4(pmp, cn);
		FUNC13(pmp, byteoffset, &bn, &bsize, &bo);
		if (bn != bp_bn) {
			if (bp)
				FUNC8(bp);
			error = FUNC7(pmp->pm_devvp, bn, bsize, NOCRED, &bp);
			if (error) {
				return (error);
			}
			bp_bn = bn;
		}
		prevcn = cn;
		if (bo >= bsize) {
			if (bp)
				FUNC8(bp);
			return (EIO);
		}
		if (FUNC3(pmp))
			cn = FUNC16(bp->b_data + bo);
		else
			cn = FUNC17(bp->b_data + bo);
		if (FUNC2(pmp) && (prevcn & 1))
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

	if (!FUNC6(pmp, cn)) {
		if (bp)
			FUNC8(bp);
		if (bnp)
			*bnp = FUNC9(pmp, cn);
		if (cnp)
			*cnp = cn;
		FUNC15(dep, FC_LASTMAP, i, cn);
		return (0);
	}

hiteof:;
	if (cnp)
		*cnp = i;
	if (bp)
		FUNC8(bp);
	/* update last file cluster entry in the FAT cache */
	FUNC15(dep, FC_LASTFC, i - 1, prevcn);
	return (E2BIG);
}
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
typedef  size_t u_long ;
struct TYPE_2__ {int bpbMedia; } ;
struct msdosfsmount {size_t pm_maxcluster; unsigned int* pm_inusemap; size_t pm_fatblocksize; size_t pm_fatmask; TYPE_1__ pm_bpb; int /*<<< orphan*/  pm_devvp; scalar_t__ pm_freeclustercount; } ;
struct buf {scalar_t__ b_data; } ;

/* Variables and functions */
 size_t CLUST_FREE ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct msdosfsmount*) ; 
 scalar_t__ FUNC1 (struct msdosfsmount*) ; 
 size_t FUNC2 (struct msdosfsmount*,size_t) ; 
 unsigned int FULL_RUN ; 
 int /*<<< orphan*/  FUNC3 (struct msdosfsmount*) ; 
 int /*<<< orphan*/  NOCRED ; 
 size_t N_INUSEBITS ; 
 int FUNC4 (int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 int /*<<< orphan*/  FUNC6 (struct msdosfsmount*,size_t,size_t*,size_t*,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (scalar_t__) ; 
 size_t FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct msdosfsmount*,size_t) ; 

int
FUNC11(struct msdosfsmount *pmp)
{
	struct buf *bp;
	u_long bn, bo, bsize, byteoffset, cn, readcn;
	int error;

	FUNC3(pmp);
	bp = NULL;

	/*
	 * Mark all clusters in use, we mark the free ones in the FAT scan
	 * loop further down.
	 */
	for (cn = 0; cn < (pmp->pm_maxcluster + N_INUSEBITS) / N_INUSEBITS; cn++)
		pmp->pm_inusemap[cn] = FULL_RUN;

	/*
	 * Figure how many free clusters are in the filesystem by ripping
	 * through the FAT counting the number of entries whose content is
	 * zero.  These represent free clusters.
	 */
	pmp->pm_freeclustercount = 0;
	for (cn = 0; cn <= pmp->pm_maxcluster; cn++) {
		byteoffset = FUNC2(pmp, cn);
		bo = byteoffset % pmp->pm_fatblocksize;
		if (bo == 0) {
			/* Read new FAT block */
			if (bp != NULL)
				FUNC5(bp);
			FUNC6(pmp, byteoffset, &bn, &bsize, NULL);
			error = FUNC4(pmp->pm_devvp, bn, bsize, NOCRED, &bp);
			if (error != 0)
				return (error);
		}
		if (FUNC1(pmp))
			readcn = FUNC7(bp->b_data + bo);
		else
			readcn = FUNC8(bp->b_data + bo);
		if (FUNC0(pmp) && (cn & 1))
			readcn >>= 4;
		readcn &= pmp->pm_fatmask;

		/*
		 * Check if the FAT ID matches the BPB's media descriptor and
		 * all other bits are set to 1.
		 */
		if (cn == 0 && readcn != ((pmp->pm_fatmask & 0xffffff00) |
		    pmp->pm_bpb.bpbMedia)) {
#ifdef MSDOSFS_DEBUG
			printf("mountmsdosfs(): Media descriptor in BPB"
			    "does not match FAT ID\n");
#endif
			FUNC5(bp);
			return (EINVAL);
		} else if (readcn == CLUST_FREE)
			FUNC10(pmp, cn);
	}
	if (bp != NULL)
		FUNC5(bp);

	for (cn = pmp->pm_maxcluster + 1; cn < (pmp->pm_maxcluster +
	    N_INUSEBITS) / N_INUSEBITS; cn++)
		pmp->pm_inusemap[cn / N_INUSEBITS] |= 1U << (cn % N_INUSEBITS);

	return (0);
}
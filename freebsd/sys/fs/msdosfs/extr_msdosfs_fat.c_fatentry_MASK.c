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
typedef  int u_long ;
struct msdosfsmount {int pm_maxcluster; int pm_fatmask; int pm_fmod; int /*<<< orphan*/  pm_devvp; } ;
struct buf {int b_data; } ;

/* Variables and functions */
 int CLUST_FIRST ; 
 int CLUST_RSRVD ; 
 int EINVAL ; 
 int FUNC0 (struct msdosfsmount*) ; 
#define  FAT12_MASK 130 
#define  FAT16_MASK 129 
 scalar_t__ FUNC1 (struct msdosfsmount*) ; 
#define  FAT32_MASK 128 
 int FUNC2 (struct msdosfsmount*,int) ; 
 int FAT_GET ; 
 int FAT_SET ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct msdosfsmount*,int,int*,int*,int*) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct msdosfsmount*,struct buf*,int) ; 

int
FUNC12(int function, struct msdosfsmount *pmp, u_long cn, u_long *oldcontents,
    u_long newcontents)
{
	int error;
	u_long readcn;
	u_long bn, bo, bsize, byteoffset;
	struct buf *bp;

#ifdef	MSDOSFS_DEBUG
	printf("fatentry(func %d, pmp %p, clust %lu, oldcon %p, newcon %lx)\n",
	    function, pmp, cn, oldcontents, newcontents);
#endif

#ifdef DIAGNOSTIC
	/*
	 * Be sure they asked us to do something.
	 */
	if ((function & (FAT_SET | FAT_GET)) == 0) {
#ifdef MSDOSFS_DEBUG
		printf("fatentry(): function code doesn't specify get or set\n");
#endif
		return (EINVAL);
	}

	/*
	 * If they asked us to return a cluster number but didn't tell us
	 * where to put it, give them an error.
	 */
	if ((function & FAT_GET) && oldcontents == NULL) {
#ifdef MSDOSFS_DEBUG
		printf("fatentry(): get function with no place to put result\n");
#endif
		return (EINVAL);
	}
#endif

	/*
	 * Be sure the requested cluster is in the filesystem.
	 */
	if (cn < CLUST_FIRST || cn > pmp->pm_maxcluster)
		return (EINVAL);

	byteoffset = FUNC2(pmp, cn);
	FUNC5(pmp, byteoffset, &bn, &bsize, &bo);
	error = FUNC3(pmp->pm_devvp, bn, bsize, NOCRED, &bp);
	if (error) {
		return (error);
	}

	if (function & FAT_GET) {
		if (FUNC1(pmp))
			readcn = FUNC6(bp->b_data + bo);
		else
			readcn = FUNC7(bp->b_data + bo);
		if (FUNC0(pmp) & (cn & 1))
			readcn >>= 4;
		readcn &= pmp->pm_fatmask;
		/* map reserved FAT entries to same values for all FATs */
		if ((readcn | ~pmp->pm_fatmask) >= CLUST_RSRVD)
			readcn |= ~pmp->pm_fatmask;
		*oldcontents = readcn;
	}
	if (function & FAT_SET) {
		switch (pmp->pm_fatmask) {
		case FAT12_MASK:
			readcn = FUNC7(bp->b_data + bo);
			if (cn & 1) {
				readcn &= 0x000f;
				readcn |= newcontents << 4;
			} else {
				readcn &= 0xf000;
				readcn |= newcontents & 0xfff;
			}
			FUNC10(bp->b_data + bo, readcn);
			break;
		case FAT16_MASK:
			FUNC10(bp->b_data + bo, newcontents);
			break;
		case FAT32_MASK:
			/*
			 * According to spec we have to retain the
			 * high order bits of the FAT entry.
			 */
			readcn = FUNC6(bp->b_data + bo);
			readcn &= ~FAT32_MASK;
			readcn |= newcontents & FAT32_MASK;
			FUNC9(bp->b_data + bo, readcn);
			break;
		}
		FUNC11(pmp, bp, bn);
		bp = NULL;
		pmp->pm_fmod = 1;
	}
	if (bp)
		FUNC4(bp);
	return (0);
}
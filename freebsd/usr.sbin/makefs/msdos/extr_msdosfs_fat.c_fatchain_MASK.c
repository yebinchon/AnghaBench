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
 int EINVAL ; 
#define  FAT12_MASK 130 
#define  FAT16_MASK 129 
#define  FAT32_MASK 128 
 int FUNC0 (struct msdosfsmount*,int) ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct msdosfsmount*,int,int*,int*,int*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct msdosfsmount*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct msdosfsmount*,struct buf*,int) ; 

__attribute__((used)) static int
FUNC10(struct msdosfsmount *pmp, u_long start, u_long count, u_long fillwith)
{
	int error;
	u_long bn, bo, bsize, byteoffset, readcn, newc;
	struct buf *bp;

#ifdef MSDOSFS_DEBUG
	printf("fatchain(pmp %p, start %lu, count %lu, fillwith %lx)\n",
	    pmp, start, count, fillwith);
#endif
	/*
	 * Be sure the clusters are in the filesystem.
	 */
	if (start < CLUST_FIRST || start + count - 1 > pmp->pm_maxcluster)
		return (EINVAL);

	while (count > 0) {
		byteoffset = FUNC0(pmp, start);
		FUNC3(pmp, byteoffset, &bn, &bsize, &bo);
		error = FUNC1(pmp->pm_devvp, bn, bsize, NOCRED, &bp);
		if (error) {
			FUNC2(bp);
			return (error);
		}
		while (count > 0) {
			start++;
			newc = --count > 0 ? start : fillwith;
			switch (pmp->pm_fatmask) {
			case FAT12_MASK:
				readcn = FUNC5(bp->b_data + bo);
				if (start & 1) {
					readcn &= 0xf000;
					readcn |= newc & 0xfff;
				} else {
					readcn &= 0x000f;
					readcn |= newc << 4;
				}
				FUNC8(bp->b_data + bo, readcn);
				bo++;
				if (!(start & 1))
					bo++;
				break;
			case FAT16_MASK:
				FUNC8(bp->b_data + bo, newc);
				bo += 2;
				break;
			case FAT32_MASK:
				readcn = FUNC4(bp->b_data + bo);
				readcn &= ~pmp->pm_fatmask;
				readcn |= newc & pmp->pm_fatmask;
				FUNC7(bp->b_data + bo, readcn);
				bo += 4;
				break;
			}
			if (bo >= bsize)
				break;
		}
		FUNC9(pmp, bp, bn);
	}
	pmp->pm_fmod = 1;
	return (0);
}
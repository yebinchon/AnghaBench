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
struct msdosfsmount {scalar_t__ pm_maxcluster; int pm_fatmask; int /*<<< orphan*/  pm_devvp; } ;
struct buf {scalar_t__ b_data; } ;

/* Variables and functions */
 scalar_t__ CLUST_FIRST ; 
 scalar_t__ CLUST_RSRVD ; 
#define  FAT12_MASK 130 
#define  FAT16_MASK 129 
#define  FAT32_MASK 128 
 scalar_t__ FUNC0 (struct msdosfsmount*,scalar_t__) ; 
 int MSDOSFSFREE ; 
 int /*<<< orphan*/  NOCRED ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct buf**) ; 
 int /*<<< orphan*/  FUNC2 (struct buf*) ; 
 int /*<<< orphan*/  FUNC3 (struct msdosfsmount*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct msdosfsmount*,struct buf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct msdosfsmount*,scalar_t__) ; 

int
FUNC10(struct msdosfsmount *pmp, u_long cluster)
{
	int error;
	struct buf *bp = NULL;
	u_long bn, bo, bsize, byteoffset;
	u_long readcn, lbn = -1;

	while (cluster >= CLUST_FIRST && cluster <= pmp->pm_maxcluster) {
		byteoffset = FUNC0(pmp, cluster);
		FUNC3(pmp, byteoffset, &bn, &bsize, &bo);
		if (lbn != bn) {
			if (bp)
				FUNC8(pmp, bp, lbn);
			error = FUNC1(pmp->pm_devvp, bn, bsize, NOCRED, &bp);
			if (error) {
				FUNC2(bp);
				return (error);
			}
			lbn = bn;
		}
		FUNC9(pmp, cluster);
		switch (pmp->pm_fatmask) {
		case FAT12_MASK:
			readcn = FUNC5(bp->b_data + bo);
			if (cluster & 1) {
				cluster = readcn >> 4;
				readcn &= 0x000f;
				readcn |= MSDOSFSFREE << 4;
			} else {
				cluster = readcn;
				readcn &= 0xf000;
				readcn |= MSDOSFSFREE & 0xfff;
			}
			FUNC7(bp->b_data + bo, readcn);
			break;
		case FAT16_MASK:
			cluster = FUNC5(bp->b_data + bo);
			FUNC7(bp->b_data + bo, MSDOSFSFREE);
			break;
		case FAT32_MASK:
			cluster = FUNC4(bp->b_data + bo);
			FUNC6(bp->b_data + bo,
				 (MSDOSFSFREE & FAT32_MASK) | (cluster & ~FAT32_MASK));
			break;
		}
		cluster &= pmp->pm_fatmask;
		if ((cluster | ~pmp->pm_fatmask) >= CLUST_RSRVD)
			cluster |= pmp->pm_fatmask;
	}
	if (bp)
		FUNC8(pmp, bp, bn);
	return (0);
}
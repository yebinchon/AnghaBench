#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_daddr_t ;
typedef  int daddr_t ;
struct TYPE_4__ {scalar_t__ bm_bitmap; } ;
typedef  TYPE_1__ blmeta_t ;

/* Variables and functions */
 int BLIST_BMAP_RADIX ; 
 int BLIST_META_MASK ; 
 int BLIST_META_RADIX ; 
 int FUNC0 (TYPE_1__*,int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static daddr_t
FUNC3(blmeta_t *scan, daddr_t allocBlk, daddr_t count, u_daddr_t radix)
{
	daddr_t blk, endBlk, i, nblks, skip;
	int digit;

	if (radix == BLIST_BMAP_RADIX)
		return (FUNC0(scan, allocBlk, count));

	endBlk = FUNC2(allocBlk + count, (allocBlk + radix) & -radix);
	radix /= BLIST_META_RADIX;
	skip = FUNC1(radix);
	blk = allocBlk & -radix;
	nblks = 0;
	while (blk < endBlk) {
		digit = (blk / radix) & BLIST_META_MASK;
		i = 1 + digit * skip;
		blk += radix;
		count = FUNC2(blk, endBlk) - allocBlk;
		nblks += FUNC3(&scan[i], allocBlk, count, radix);
		if (scan[i].bm_bitmap == 0)
			scan->bm_bitmap &= ~((u_daddr_t)1 << digit);
		allocBlk = blk;
	}
	return (nblks);
}
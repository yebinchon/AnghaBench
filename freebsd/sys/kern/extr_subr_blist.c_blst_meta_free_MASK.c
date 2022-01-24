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
struct TYPE_4__ {int /*<<< orphan*/  bm_bitmap; int /*<<< orphan*/  bm_bighint; } ;
typedef  TYPE_1__ blmeta_t ;

/* Variables and functions */
 int BLIST_BMAP_RADIX ; 
 int /*<<< orphan*/  BLIST_MAX_ALLOC ; 
 int BLIST_META_MASK ; 
 int BLIST_META_RADIX ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 void FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static void
FUNC4(blmeta_t *scan, daddr_t freeBlk, daddr_t count, u_daddr_t radix)
{
	daddr_t blk, endBlk, i, skip;
	int digit, endDigit;

	/*
	 * We could probably do a better job here.  We are required to make
	 * bighint at least as large as the biggest allocable block of data.
	 * If we just shoehorn it, a little extra overhead will be incurred
	 * on the next allocation (but only that one typically).
	 */
	scan->bm_bighint = BLIST_MAX_ALLOC;

	if (radix == BLIST_BMAP_RADIX)
		return (FUNC1(scan, freeBlk, count));

	endBlk = FUNC3(freeBlk + count, (freeBlk + radix) & -radix);
	radix /= BLIST_META_RADIX;
	skip = FUNC2(radix);
	blk = freeBlk & -radix;
	digit = (blk / radix) & BLIST_META_MASK;
	endDigit = 1 + (((endBlk - 1) / radix) & BLIST_META_MASK);
	scan->bm_bitmap |= FUNC0(digit, endDigit - digit);
	for (i = 1 + digit * skip; blk < endBlk; i += skip) {
		blk += radix;
		count = FUNC3(blk, endBlk) - freeBlk;
		FUNC4(&scan[i], freeBlk, count, radix);
		freeBlk = blk;
	}
}
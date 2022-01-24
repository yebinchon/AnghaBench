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
typedef  int vm_pindex_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  int daddr_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int SWAPBLK_NONE ; 
 int SWB_NPAGES ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC2(vm_object_t object, vm_pindex_t pindex, int *before,
    int *after)
{
	daddr_t blk, blk0;
	int i;

	FUNC0(object);

	/*
	 * do we have good backing store at the requested index ?
	 */
	blk0 = FUNC1(object, pindex, 0);
	if (blk0 == SWAPBLK_NONE) {
		if (before)
			*before = 0;
		if (after)
			*after = 0;
		return (FALSE);
	}

	/*
	 * find backwards-looking contiguous good backing store
	 */
	if (before != NULL) {
		for (i = 1; i < SWB_NPAGES; i++) {
			if (i > pindex)
				break;
			blk = FUNC1(object, pindex - i, 0);
			if (blk != blk0 - i)
				break;
		}
		*before = i - 1;
	}

	/*
	 * find forward-looking contiguous good backing store
	 */
	if (after != NULL) {
		for (i = 1; i < SWB_NPAGES; i++) {
			blk = FUNC1(object, pindex + i, 0);
			if (blk != blk0 + i)
				break;
		}
		*after = i - 1;
	}
	return (TRUE);
}
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
typedef  int vm_size_t ;
typedef  int vm_offset_t ;

/* Variables and functions */
 int CACHEOP_R4K_INDEX_WB_INV ; 
 int CACHE_R4K_D ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int pdcache_loopcount ; 
 int pdcache_stride ; 
 int pdcache_way_mask ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

void
FUNC5(vm_offset_t va, vm_size_t size)
{
	vm_offset_t eva, tmpva;
	int i, stride, loopcount;

	/*
	 * Since we're doing Index ops, we expect to not be able
	 * to access the address we've been given.  So, get the
	 * bits that determine the cache index, and make a KSEG0
	 * address out of them.
	 */
	va = FUNC0(va & pdcache_way_mask);

	eva = FUNC3(va + size);
	va = FUNC4(va);

	/*
	 * GCC generates better code in the loops if we reference local
	 * copies of these global variables.
	 */
	stride = pdcache_stride;
	loopcount = pdcache_loopcount;

	while ((eva - va) >= (8 * 32)) {
		tmpva = va;
		for (i = 0; i < loopcount; i++, tmpva += stride)
			FUNC2(tmpva,
			    CACHE_R4K_D|CACHEOP_R4K_INDEX_WB_INV);
		va += 8 * 32;
	}

	while (va < eva) {
		tmpva = va;
		for (i = 0; i < loopcount; i++, tmpva += stride)
			FUNC1(tmpva,
			    CACHE_R4K_D|CACHEOP_R4K_INDEX_WB_INV);
		va += 32;
	}
}
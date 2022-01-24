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
 int CACHE_R4K_SD ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int sdcache_size ; 
 int FUNC4 (int) ; 

void
FUNC5(vm_offset_t va, vm_size_t size)
{
	vm_offset_t eva;

	/*
	 * Since we're doing Index ops, we expect to not be able
	 * to access the address we've been given.  So, get the
	 * bits that determine the cache index, and make a KSEG0
	 * address out of them.
	 */
	va = FUNC0(va & (sdcache_size - 1));

	eva = FUNC3(va + size);
	va = FUNC4(va);

	while ((eva - va) >= (32 * 32)) {
		FUNC2(va,
		    CACHE_R4K_SD|CACHEOP_R4K_INDEX_WB_INV);
		va += (32 * 32);
	}

	while (va < eva) {
		FUNC1(va, CACHE_R4K_SD|CACHEOP_R4K_INDEX_WB_INV);
		va += 32;
	}
}
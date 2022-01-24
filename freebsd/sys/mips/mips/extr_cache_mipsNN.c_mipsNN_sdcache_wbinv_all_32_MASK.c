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
typedef  scalar_t__ vm_offset_t ;

/* Variables and functions */
 int CACHEOP_R4K_INDEX_WB_INV ; 
 int CACHE_R4K_SD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ sdcache_size ; 

void
FUNC2(void)
{
	vm_offset_t va = FUNC0(0);
	vm_offset_t eva = va + sdcache_size;

	while (va < eva) {
		FUNC1(va,
		    CACHE_R4K_SD|CACHEOP_R4K_INDEX_WB_INV);
		va += (32 * 32);
	}
}
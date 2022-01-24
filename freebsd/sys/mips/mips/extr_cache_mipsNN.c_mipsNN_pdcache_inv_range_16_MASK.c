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
 int CACHEOP_R4K_HIT_INV ; 
 int CACHE_R4K_D ; 
 int /*<<< orphan*/  SYNC ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

void
FUNC4(vm_offset_t va, vm_size_t size)
{
	vm_offset_t eva;

	eva = FUNC2(va + size);
	va = FUNC3(va);

	while ((eva - va) >= (32 * 16)) {
		FUNC1(va, CACHE_R4K_D|CACHEOP_R4K_HIT_INV);
		va += (32 * 16);
	}

	while (va < eva) {
		FUNC0(va, CACHE_R4K_D|CACHEOP_R4K_HIT_INV);
		va += 16;
	}

	SYNC;
}
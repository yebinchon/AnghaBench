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
 int CACHE_R4K_I ; 
 int /*<<< orphan*/  SYNC ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

void
FUNC5(vm_offset_t va, vm_size_t size)
{
	vm_offset_t eva;

	eva = FUNC3(va + size);
	va = FUNC4(va);

	FUNC2(va, (eva - va));

	while ((eva - va) >= (32 * 32)) {
		FUNC1(va, CACHE_R4K_I|CACHEOP_R4K_HIT_INV);
		va += (32 * 32);
	}

	while (va < eva) {
		FUNC0(va, CACHE_R4K_I|CACHEOP_R4K_HIT_INV);
		va += 32;
	}

	SYNC;
}
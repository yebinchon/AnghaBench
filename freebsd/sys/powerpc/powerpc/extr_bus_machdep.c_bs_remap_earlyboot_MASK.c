#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_paddr_t ;
typedef  void* vm_offset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
struct TYPE_2__ {scalar_t__ addr; scalar_t__ virt; scalar_t__ size; int flags; } ;

/* Variables and functions */
#define  BUS_SPACE_MAP_CACHEABLE 129 
#define  BUS_SPACE_MAP_PREFETCHABLE 128 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  VM_MEMATTR_CACHEABLE ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 int /*<<< orphan*/  VM_MEMATTR_PREFETCHABLE ; 
 int earlyboot_map_idx ; 
 TYPE_1__* earlyboot_mappings ; 
 scalar_t__ hw_direct_map ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC3 (scalar_t__) ; 

void
FUNC4(void)
{
	vm_paddr_t pa, spa;
	vm_offset_t va;
	int i;
	vm_memattr_t ma;

	for (i = 0; i < earlyboot_map_idx; i++) {
		spa = earlyboot_mappings[i].addr;

		if (hw_direct_map &&
		   FUNC0(spa) == earlyboot_mappings[i].virt &&
		   FUNC1(spa, earlyboot_mappings[i].size) == 0)
			continue;

		ma = VM_MEMATTR_DEFAULT;
		switch (earlyboot_mappings[i].flags) {
			case BUS_SPACE_MAP_CACHEABLE:
				ma = VM_MEMATTR_CACHEABLE;
				break;
			case BUS_SPACE_MAP_PREFETCHABLE:
				ma = VM_MEMATTR_PREFETCHABLE;
				break;
		}

		pa = FUNC3(spa);
		va = FUNC3(earlyboot_mappings[i].virt);
		while (pa < spa + earlyboot_mappings[i].size) {
			FUNC2(va, pa, ma);
			va += PAGE_SIZE;
			pa += PAGE_SIZE;
		}
	}
}
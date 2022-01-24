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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
struct TYPE_4__ {int mas1; scalar_t__ virt; scalar_t__ size; } ;
typedef  TYPE_1__ tlb_entry_t ;

/* Variables and functions */
 int MAS1_VALID ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int TLB1_ENTRIES ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ tlb1_map_base ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void
FUNC3(vm_offset_t va, vm_size_t size)
{
	int i;
	tlb_entry_t e;
	vm_size_t isize;

	size = FUNC0(size, PAGE_SIZE);
	isize = size;
	for (i = 0; i < TLB1_ENTRIES && size > 0; i++) {
		FUNC1(&e, i);
		if (!(e.mas1 & MAS1_VALID))
			continue;
		if (va <= e.virt && (va + isize) >= (e.virt + e.size)) {
			size -= e.size;
			e.mas1 &= ~MAS1_VALID;
			FUNC2(&e, i);
		}
	}
	if (tlb1_map_base == va + isize)
		tlb1_map_base -= isize;
}
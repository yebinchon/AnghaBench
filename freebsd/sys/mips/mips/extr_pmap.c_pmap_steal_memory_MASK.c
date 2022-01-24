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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  caddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__* phys_avail ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

vm_offset_t
FUNC5(vm_size_t size)
{
	vm_paddr_t bank_size, pa;
	vm_offset_t va;

	size = FUNC4(size);
	bank_size = phys_avail[1] - phys_avail[0];
	while (size > bank_size) {
		int i;

		for (i = 0; phys_avail[i + 2]; i += 2) {
			phys_avail[i] = phys_avail[i + 2];
			phys_avail[i + 1] = phys_avail[i + 3];
		}
		phys_avail[i] = 0;
		phys_avail[i + 1] = 0;
		if (!phys_avail[0])
			FUNC3("pmap_steal_memory: out of memory");
		bank_size = phys_avail[1] - phys_avail[0];
	}

	pa = phys_avail[0];
	phys_avail[0] += size;
	if (FUNC0(pa) == 0)
		FUNC3("Out of memory below 512Meg?");
	va = FUNC1(pa);
	FUNC2((caddr_t)va, size);
	return (va);
}
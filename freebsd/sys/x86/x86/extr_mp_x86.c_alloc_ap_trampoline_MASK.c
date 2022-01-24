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
typedef  scalar_t__ vm_paddr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int basemem ; 
 scalar_t__ bootMP_size ; 
 scalar_t__ boot_address ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

void
FUNC5(vm_paddr_t *physmap, unsigned int *physmap_idx)
{
	unsigned int i;
	bool allocated;

	allocated = false;
	for (i = *physmap_idx; i <= *physmap_idx; i -= 2) {
		/*
		 * Find a memory region big enough and below the 1MB boundary
		 * for the trampoline code.
		 * NB: needs to be page aligned.
		 */
		if (physmap[i] >= FUNC0(1) ||
		    (FUNC4(physmap[i + 1]) - FUNC3(physmap[i])) <
		    FUNC3(bootMP_size))
			continue;

		allocated = true;
		/*
		 * Try to steal from the end of the region to mimic previous
		 * behaviour, else fallback to steal from the start.
		 */
		if (physmap[i + 1] < FUNC0(1)) {
			boot_address = FUNC4(physmap[i + 1]);
			if ((physmap[i + 1] - boot_address) < bootMP_size)
				boot_address -= FUNC3(bootMP_size);
			physmap[i + 1] = boot_address;
		} else {
			boot_address = FUNC3(physmap[i]);
			physmap[i] = boot_address + FUNC3(bootMP_size);
		}
		if (physmap[i] == physmap[i + 1] && *physmap_idx != 0) {
			FUNC1(&physmap[i], &physmap[i + 2],
			    sizeof(*physmap) * (*physmap_idx - i + 2));
			*physmap_idx -= 2;
		}
		break;
	}

	if (!allocated) {
		boot_address = basemem * 1024 - bootMP_size;
		if (bootverbose)
			FUNC2(
"Cannot find enough space for the boot trampoline, placing it at %#x",
			    boot_address);
	}
}
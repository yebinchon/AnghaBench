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
typedef  int vm_offset_t ;
typedef  int u_long ;
typedef  int u_int32_t ;
struct agp_amd_gatt {int ag_entries; int* ag_vdir; void* ag_virtual; void* ag_physical; void* ag_pdir; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_AMD751_APBASE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AGP_PAGE_SHIFT ; 
 int AGP_PAGE_SIZE ; 
 int /*<<< orphan*/  M_AGP ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  VM_MEMATTR_WRITE_COMBINING ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct agp_amd_gatt*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 struct agp_amd_gatt* FUNC5 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (int) ; 

__attribute__((used)) static struct agp_amd_gatt *
FUNC8(device_t dev)
{
	u_int32_t apsize = FUNC0(dev);
	u_int32_t entries = apsize >> AGP_PAGE_SHIFT;
	struct agp_amd_gatt *gatt;
	int i, npages, pdir_offset;

	if (bootverbose)
		FUNC1(dev,
			      "allocating GATT for aperture of size %dM\n",
			      apsize / (1024*1024));

	gatt = FUNC5(sizeof(struct agp_amd_gatt), M_AGP, M_NOWAIT);
	if (!gatt)
		return 0;

	/*
	 * The AMD751 uses a page directory to map a non-contiguous
	 * gatt so we don't need to use kmem_alloc_contig.
	 * Allocate individual GATT pages and map them into the page
	 * directory.
	 */
	gatt->ag_entries = entries;
	gatt->ag_virtual = (void *)FUNC3(entries * sizeof(u_int32_t),
	    M_NOWAIT | M_ZERO, 0, ~0, VM_MEMATTR_WRITE_COMBINING);
	if (!gatt->ag_virtual) {
		if (bootverbose)
			FUNC1(dev, "allocation failed\n");
		FUNC2(gatt, M_AGP);
		return 0;
	}

	/*
	 * Allocate the page directory.
	 */
	gatt->ag_vdir = (void *)FUNC3(AGP_PAGE_SIZE, M_NOWAIT |
	    M_ZERO, 0, ~0, VM_MEMATTR_WRITE_COMBINING);
	if (!gatt->ag_vdir) {
		if (bootverbose)
			FUNC1(dev,
				      "failed to allocate page directory\n");
		FUNC4((vm_offset_t)gatt->ag_virtual, entries *
		    sizeof(u_int32_t));
		FUNC2(gatt, M_AGP);
		return 0;
	}

	gatt->ag_pdir = FUNC7((vm_offset_t) gatt->ag_vdir);
	if(bootverbose)
		FUNC1(dev, "gatt -> ag_pdir %#lx\n",
		    (u_long)gatt->ag_pdir);
	/*
	 * Allocate the gatt pages
	 */
	gatt->ag_entries = entries;
	if(bootverbose)
		FUNC1(dev, "allocating GATT for %d AGP page entries\n", 
			gatt->ag_entries);

	gatt->ag_physical = FUNC7((vm_offset_t) gatt->ag_virtual);

	/*
	 * Map the pages of the GATT into the page directory.
	 *
	 * The GATT page addresses are mapped into the directory offset by
	 * an amount dependent on the base address of the aperture. This
	 * is and offset into the page directory, not an offset added to
	 * the addresses of the gatt pages.
	 */

	pdir_offset = FUNC6(dev, AGP_AMD751_APBASE, 4) >> 22;

	npages = ((entries * sizeof(u_int32_t) + AGP_PAGE_SIZE - 1)
		  >> AGP_PAGE_SHIFT);

	for (i = 0; i < npages; i++) {
		vm_offset_t va;
		vm_offset_t pa;

		va = ((vm_offset_t) gatt->ag_virtual) + i * AGP_PAGE_SIZE;
		pa = FUNC7(va);
		gatt->ag_vdir[i + pdir_offset] = pa | 1;
	}

	return gatt;
}
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
typedef  int u_int32_t ;
struct agp_ati_softc {int ag_entries; int* ag_vdir; int /*<<< orphan*/ * ag_virtual; void* ag_pdir; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_APBASE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AGP_PAGE_SHIFT ; 
 int AGP_PAGE_SIZE ; 
 int ENOMEM ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  VM_MEMATTR_WRITE_COMBINING ; 
 scalar_t__ bootverbose ; 
 struct agp_ati_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct agp_ati_softc *sc = FUNC1(dev);
	u_int32_t apsize = FUNC0(dev);
	u_int32_t entries = apsize >> AGP_PAGE_SHIFT;
	u_int32_t apbase_offset;
	int i;

	/* Alloc the GATT -- pointers to pages of AGP memory */
	sc->ag_entries = entries;
	sc->ag_virtual = (void *)FUNC3(entries * sizeof(u_int32_t),
	    M_NOWAIT | M_ZERO, 0, ~0, VM_MEMATTR_WRITE_COMBINING);
	if (sc->ag_virtual == NULL) {
		if (bootverbose)
			FUNC2(dev, "GATT allocation failed\n");
		return ENOMEM;
	}

	/* Alloc the page directory -- pointers to each page of the GATT */
	sc->ag_vdir = (void *)FUNC3(AGP_PAGE_SIZE, M_NOWAIT | M_ZERO,
	    0, ~0, VM_MEMATTR_WRITE_COMBINING);
	if (sc->ag_vdir == NULL) {
		if (bootverbose)
			FUNC2(dev, "pagedir allocation failed\n");
		FUNC4((vm_offset_t)sc->ag_virtual, entries *
		    sizeof(u_int32_t));
		return ENOMEM;
	}
	sc->ag_pdir = FUNC6((vm_offset_t)sc->ag_vdir);

	apbase_offset = FUNC5(dev, AGP_APBASE, 4) >> 22;
	/* Fill in the pagedir's pointers to GATT pages */
	for (i = 0; i < sc->ag_entries / 1024; i++) {
		vm_offset_t va;
		vm_offset_t pa;

		va = ((vm_offset_t)sc->ag_virtual) + i * AGP_PAGE_SIZE;
		pa = FUNC6(va);
		sc->ag_vdir[apbase_offset + i] = pa | 1;
	}

	return 0;
}
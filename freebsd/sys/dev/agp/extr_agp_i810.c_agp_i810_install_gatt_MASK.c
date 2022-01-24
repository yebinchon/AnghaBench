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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct agp_i810_softc {int dcache_size; TYPE_1__* gatt; int /*<<< orphan*/ * sc_res; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int ag_physical; int /*<<< orphan*/ * ag_virtual; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_I810_DRT ; 
 int AGP_I810_DRT_POPULATED ; 
 int /*<<< orphan*/  AGP_I810_PGTBL_CTL ; 
 int ENOMEM ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  VM_MEMATTR_WRITE_COMBINING ; 
 scalar_t__ bootverbose ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct agp_i810_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct agp_i810_softc *sc;

	sc = FUNC2(dev);

	/* Some i810s have on-chip memory called dcache. */
	if ((FUNC0(sc->sc_res[0], AGP_I810_DRT) & AGP_I810_DRT_POPULATED)
	    != 0)
		sc->dcache_size = 4 * 1024 * 1024;
	else
		sc->dcache_size = 0;

	/* According to the specs the gatt on the i810 must be 64k. */
	sc->gatt->ag_virtual = (void *)FUNC4(64 * 1024, M_NOWAIT |
	    M_ZERO, 0, ~0, PAGE_SIZE, 0, VM_MEMATTR_WRITE_COMBINING);
	if (sc->gatt->ag_virtual == NULL) {
		if (bootverbose)
			FUNC3(dev, "contiguous allocation failed\n");
		return (ENOMEM);
	}

	sc->gatt->ag_physical = FUNC5((vm_offset_t)sc->gatt->ag_virtual);
	/* Install the GATT. */
	FUNC1(sc->sc_res[0], AGP_I810_PGTBL_CTL,
	    sc->gatt->ag_physical | 1);
	return (0);
}
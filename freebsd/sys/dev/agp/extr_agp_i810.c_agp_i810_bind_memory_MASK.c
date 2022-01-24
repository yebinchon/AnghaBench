#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
struct agp_memory {int am_size; int am_type; int am_is_bound; int am_offset; scalar_t__ am_physical; } ;
struct TYPE_4__ {int /*<<< orphan*/  as_lock; } ;
struct agp_i810_softc {int /*<<< orphan*/ * sc_res; TYPE_3__* match; TYPE_1__ agp; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {scalar_t__ chiptype; int /*<<< orphan*/  (* install_gtt_pte ) (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AGP_I810_GTT ; 
 int AGP_PAGE_SHIFT ; 
 int AGP_PAGE_SIZE ; 
 scalar_t__ CHIP_I810 ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,struct agp_memory*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct agp_i810_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev, struct agp_memory *mem, vm_offset_t offset)
{
	struct agp_i810_softc *sc;
	vm_offset_t i;

	/* Do some sanity checks first. */
	if ((offset & (AGP_PAGE_SIZE - 1)) != 0 ||
	    offset + mem->am_size > FUNC0(dev)) {
		FUNC4(dev, "binding memory at bad offset %#x\n",
		    (int)offset);
		return (EINVAL);
	}

	sc = FUNC3(dev);
	if (mem->am_type == 2 && mem->am_size != AGP_PAGE_SIZE) {
		FUNC5(&sc->agp.as_lock);
		if (mem->am_is_bound) {
			FUNC6(&sc->agp.as_lock);
			return (EINVAL);
		}
		/* The memory's already wired down, just stick it in the GTT. */
		for (i = 0; i < mem->am_size; i += AGP_PAGE_SIZE) {
			sc->match->driver->install_gtt_pte(dev, (offset + i) >>
			    AGP_PAGE_SHIFT, mem->am_physical + i, 0);
		}
		mem->am_offset = offset;
		mem->am_is_bound = 1;
		FUNC6(&sc->agp.as_lock);
		return (0);
	}

	if (mem->am_type != 1)
		return (FUNC1(dev, mem, offset));

	/*
	 * Mapping local DRAM into GATT.
	 */
	if (sc->match->driver->chiptype != CHIP_I810)
		return (EINVAL);
	for (i = 0; i < mem->am_size; i += AGP_PAGE_SIZE)
		FUNC2(sc->sc_res[0],
		    AGP_I810_GTT + (i >> AGP_PAGE_SHIFT) * 4, i | 3);

	return (0);
}
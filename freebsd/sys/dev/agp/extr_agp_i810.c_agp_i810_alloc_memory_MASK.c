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
typedef  int vm_size_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
struct agp_memory {int am_size; int am_type; scalar_t__ am_is_bound; scalar_t__ am_offset; scalar_t__ am_physical; scalar_t__ am_obj; scalar_t__ am_id; } ;
struct TYPE_6__ {int as_allocated; int as_maxmem; int /*<<< orphan*/  as_memory; int /*<<< orphan*/  as_nextid; } ;
struct agp_i810_softc {int dcache_size; TYPE_3__ agp; int /*<<< orphan*/ * argb_cursor; TYPE_2__* match; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {scalar_t__ chiptype; } ;

/* Variables and functions */
 int AGP_PAGE_SIZE ; 
 scalar_t__ CHIP_I810 ; 
 int /*<<< orphan*/  M_AGP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  OBJT_DEFAULT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct agp_memory*,int /*<<< orphan*/ ) ; 
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  am_link ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct agp_i810_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 struct agp_memory* FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct agp_memory *
FUNC12(device_t dev, int type, vm_size_t size)
{
	struct agp_i810_softc *sc;
	struct agp_memory *mem;
	vm_page_t m;

	sc = FUNC6(dev);

	if ((size & (AGP_PAGE_SIZE - 1)) != 0 ||
	    sc->agp.as_allocated + size > sc->agp.as_maxmem)
		return (0);

	if (type == 1) {
		/*
		 * Mapping local DRAM into GATT.
		 */
		if (sc->match->driver->chiptype != CHIP_I810)
			return (0);
		if (size != sc->dcache_size)
			return (0);
	} else if (type == 2) {
		/*
		 * Type 2 is the contiguous physical memory type, that hands
		 * back a physical address.  This is used for cursors on i810.
		 * Hand back as many single pages with physical as the user
		 * wants, but only allow one larger allocation (ARGB cursor)
		 * for simplicity.
		 */
		if (size != AGP_PAGE_SIZE) {
			if (sc->argb_cursor != NULL)
				return (0);

			/* Allocate memory for ARGB cursor, if we can. */
			sc->argb_cursor = FUNC5(size, M_AGP,
			   0, 0, ~0, PAGE_SIZE, 0);
			if (sc->argb_cursor == NULL)
				return (0);
		}
	}

	mem = FUNC7(sizeof *mem, M_AGP, M_WAITOK);
	mem->am_id = sc->agp.as_nextid++;
	mem->am_size = size;
	mem->am_type = type;
	if (type != 1 && (type != 2 || size == AGP_PAGE_SIZE))
		mem->am_obj = FUNC9(OBJT_DEFAULT,
		    FUNC4(FUNC8(size)));
	else
		mem->am_obj = 0;

	if (type == 2) {
		if (size == AGP_PAGE_SIZE) {
			/*
			 * Allocate and wire down the page now so that we can
			 * get its physical address.
			 */
			FUNC1(mem->am_obj);
			m = FUNC10(mem->am_obj, 0, VM_ALLOC_NOBUSY |
			    VM_ALLOC_WIRED | VM_ALLOC_ZERO);
			FUNC2(mem->am_obj);
			mem->am_physical = FUNC3(m);
		} else {
			/* Our allocation is already nicely wired down for us.
			 * Just grab the physical address.
			 */
			mem->am_physical = FUNC11(sc->argb_cursor);
		}
	} else
		mem->am_physical = 0;

	mem->am_offset = 0;
	mem->am_is_bound = 0;
	FUNC0(&sc->agp.as_memory, mem, am_link);
	sc->agp.as_allocated += size;

	return (mem);
}
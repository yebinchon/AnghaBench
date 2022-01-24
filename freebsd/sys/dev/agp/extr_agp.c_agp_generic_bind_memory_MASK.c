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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int vm_offset_t ;
typedef  int uintmax_t ;
struct agp_softc {int /*<<< orphan*/  as_lock; } ;
struct agp_memory {int am_size; int am_is_bound; int am_offset; int /*<<< orphan*/  am_obj; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int AGP_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  PQ_INACTIVE ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct agp_softc* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int
FUNC18(device_t dev, struct agp_memory *mem,
			vm_offset_t offset)
{
	struct agp_softc *sc = FUNC10(dev);
	vm_offset_t i, j, k;
	vm_page_t m;
	int error;

	/* Do some sanity checks first. */
	if ((offset & (AGP_PAGE_SIZE - 1)) != 0 ||
	    offset + mem->am_size > FUNC3(dev)) {
		FUNC11(dev, "binding memory at bad offset %#x\n",
		    (int)offset);
		return EINVAL;
	}

	/*
	 * Allocate the pages early, before acquiring the lock,
	 * because vm_page_grab() may sleep and we can't hold a mutex
	 * while sleeping.
	 */
	FUNC7(mem->am_obj);
	for (i = 0; i < mem->am_size; i += PAGE_SIZE) {
		/*
		 * Find a page from the object and wire it
		 * down. This page will be mapped using one or more
		 * entries in the GATT (assuming that PAGE_SIZE >=
		 * AGP_PAGE_SIZE. If this is the first call to bind,
		 * the pages will be allocated and zeroed.
		 */
		m = FUNC14(mem->am_obj, FUNC5(i),
		    VM_ALLOC_WIRED | VM_ALLOC_ZERO);
		FUNC1("found page pa=%#jx\n", (uintmax_t)FUNC9(m));
	}
	FUNC8(mem->am_obj);

	FUNC12(&sc->as_lock);

	if (mem->am_is_bound) {
		FUNC11(dev, "memory already bound\n");
		error = EINVAL;
		FUNC7(mem->am_obj);
		i = 0;
		goto bad;
	}
	
	/*
	 * Bind the individual pages and flush the chipset's
	 * TLB.
	 */
	FUNC7(mem->am_obj);
	for (i = 0; i < mem->am_size; i += PAGE_SIZE) {
		m = FUNC15(mem->am_obj, FUNC5(i));

		/*
		 * Install entries in the GATT, making sure that if
		 * AGP_PAGE_SIZE < PAGE_SIZE and mem->am_size is not
		 * aligned to PAGE_SIZE, we don't modify too many GATT 
		 * entries.
		 */
		for (j = 0; j < PAGE_SIZE && i + j < mem->am_size;
		     j += AGP_PAGE_SIZE) {
			vm_offset_t pa = FUNC9(m) + j;
			FUNC1("binding offset %#jx to pa %#jx\n",
				(uintmax_t)offset + i + j, (uintmax_t)pa);
			error = FUNC0(dev, offset + i + j, pa);
			if (error) {
				/*
				 * Bail out. Reverse all the mappings
				 * and unwire the pages.
				 */
				for (k = 0; k < i + j; k += AGP_PAGE_SIZE)
					FUNC4(dev, offset + k);
				goto bad;
			}
		}
		FUNC17(m);
	}
	FUNC8(mem->am_obj);

	/*
	 * Make sure the chipset gets the new mappings.
	 */
	FUNC2(dev);

	mem->am_offset = offset;
	mem->am_is_bound = 1;

	FUNC13(&sc->as_lock);

	return 0;
bad:
	FUNC13(&sc->as_lock);
	FUNC6(mem->am_obj);
	for (k = 0; k < mem->am_size; k += PAGE_SIZE) {
		m = FUNC15(mem->am_obj, FUNC5(k));
		if (k >= i)
			FUNC17(m);
		FUNC16(m, PQ_INACTIVE);
	}
	FUNC8(mem->am_obj);

	return error;
}
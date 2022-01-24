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
struct agp_softc {int /*<<< orphan*/  as_lock; } ;
struct agp_memory {int am_size; scalar_t__ am_is_bound; scalar_t__ am_offset; int /*<<< orphan*/  am_obj; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AGP_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  PQ_INACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct agp_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC11(device_t dev, struct agp_memory *mem)
{
	struct agp_softc *sc = FUNC5(dev);
	vm_page_t m;
	int i;

	FUNC7(&sc->as_lock);

	if (!mem->am_is_bound) {
		FUNC6(dev, "memory is not bound\n");
		FUNC8(&sc->as_lock);
		return EINVAL;
	}


	/*
	 * Unbind the individual pages and flush the chipset's
	 * TLB. Unwire the pages so they can be swapped.
	 */
	for (i = 0; i < mem->am_size; i += AGP_PAGE_SIZE)
		FUNC1(dev, mem->am_offset + i);

	FUNC0(dev);

	FUNC2(mem->am_obj);
	for (i = 0; i < mem->am_size; i += PAGE_SIZE) {
		m = FUNC9(mem->am_obj, FUNC4(i));
		FUNC10(m, PQ_INACTIVE);
	}
	FUNC3(mem->am_obj);

	mem->am_offset = 0;
	mem->am_is_bound = 0;

	FUNC8(&sc->as_lock);

	return 0;
}
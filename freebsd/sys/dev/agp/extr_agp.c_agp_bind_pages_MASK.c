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
typedef  int vm_size_t ;
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int vm_offset_t ;
typedef  int uintmax_t ;
struct agp_softc {int /*<<< orphan*/  as_lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int AGP_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC5 (int) ; 
 int PAGE_SIZE ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 struct agp_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(device_t dev, vm_page_t *pages, vm_size_t size,
    vm_offset_t offset)
{
	struct agp_softc *sc;
	vm_offset_t i, j, k, pa;
	vm_page_t m;
	int error;

	if ((size & (AGP_PAGE_SIZE - 1)) != 0 ||
	    (offset & (AGP_PAGE_SIZE - 1)) != 0)
		return (EINVAL);

	sc = FUNC7(dev);

	FUNC8(&sc->as_lock);
	for (i = 0; i < size; i += PAGE_SIZE) {
		m = pages[FUNC5(i)];
		FUNC4(FUNC10(m),
		    ("agp_bind_pages: page %p hasn't been wired", m));

		/*
		 * Install entries in the GATT, making sure that if
		 * AGP_PAGE_SIZE < PAGE_SIZE and size is not
		 * aligned to PAGE_SIZE, we don't modify too many GATT 
		 * entries.
		 */
		for (j = 0; j < PAGE_SIZE && i + j < size; j += AGP_PAGE_SIZE) {
			pa = FUNC6(m) + j;
			FUNC1("binding offset %#jx to pa %#jx\n",
				(uintmax_t)offset + i + j, (uintmax_t)pa);
			error = FUNC0(dev, offset + i + j, pa);
			if (error) {
				/*
				 * Bail out. Reverse all the mappings.
				 */
				for (k = 0; k < i + j; k += AGP_PAGE_SIZE)
					FUNC3(dev, offset + k);

				FUNC9(&sc->as_lock);
				return (error);
			}
		}
	}

	FUNC2(dev);

	FUNC9(&sc->as_lock);
	return (0);
}
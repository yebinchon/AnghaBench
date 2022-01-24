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
typedef  int vm_offset_t ;
struct agp_softc {int /*<<< orphan*/  as_lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int AGP_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 struct agp_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(device_t dev, vm_size_t size, vm_offset_t offset)
{
	struct agp_softc *sc;
	vm_offset_t i;

	if ((size & (AGP_PAGE_SIZE - 1)) != 0 ||
	    (offset & (AGP_PAGE_SIZE - 1)) != 0)
		return (EINVAL);

	sc = FUNC2(dev);

	FUNC3(&sc->as_lock);
	for (i = 0; i < size; i += AGP_PAGE_SIZE)
		FUNC1(dev, offset + i);

	FUNC0(dev);

	FUNC4(&sc->as_lock);
	return (0);
}
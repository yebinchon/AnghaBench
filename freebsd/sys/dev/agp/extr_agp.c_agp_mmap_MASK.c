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
typedef  scalar_t__ vm_ooffset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
struct cdev {int /*<<< orphan*/  si_drv1; } ;
struct agp_softc {int /*<<< orphan*/ * as_aperture; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct agp_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct cdev *kdev, vm_ooffset_t offset, vm_paddr_t *paddr,
    int prot, vm_memattr_t *memattr)
{
	device_t dev = kdev->si_drv1;
	struct agp_softc *sc = FUNC1(dev);

	if (offset > FUNC0(dev))
		return -1;
	if (sc->as_aperture == NULL)
		return -1;
	*paddr = FUNC2(sc->as_aperture) + offset;
	return 0;
}
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
struct agp_memory {int am_type; int am_size; int am_offset; scalar_t__ am_is_bound; } ;
struct TYPE_4__ {int /*<<< orphan*/  as_lock; } ;
struct agp_i810_softc {TYPE_3__* match; TYPE_1__ agp; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {scalar_t__ chiptype; int /*<<< orphan*/  (* install_gtt_pte ) (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int AGP_PAGE_SHIFT ; 
 int AGP_PAGE_SIZE ; 
 scalar_t__ CHIP_I810 ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct agp_memory*) ; 
 struct agp_i810_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, struct agp_memory *mem)
{
	struct agp_i810_softc *sc;
	vm_offset_t i;

	sc = FUNC1(dev);

	if (mem->am_type == 2 && mem->am_size != AGP_PAGE_SIZE) {
		FUNC2(&sc->agp.as_lock);
		if (!mem->am_is_bound) {
			FUNC3(&sc->agp.as_lock);
			return (EINVAL);
		}

		for (i = 0; i < mem->am_size; i += AGP_PAGE_SIZE) {
			sc->match->driver->install_gtt_pte(dev,
			    (mem->am_offset + i) >> AGP_PAGE_SHIFT, 0, 0);
		}
		mem->am_is_bound = 0;
		FUNC3(&sc->agp.as_lock);
		return (0);
	}

	if (mem->am_type != 1)
		return (FUNC0(dev, mem));

	if (sc->match->driver->chiptype != CHIP_I810)
		return (EINVAL);
	for (i = 0; i < mem->am_size; i += AGP_PAGE_SIZE) {
		sc->match->driver->install_gtt_pte(dev, i >> AGP_PAGE_SHIFT,
		    0, 0);
	}
	return (0);
}
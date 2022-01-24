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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint32_t ;
struct agp_i810_softc {int sc_bios_allocated_flush_page; int /*<<< orphan*/  bdev; int /*<<< orphan*/  sc_flush_page_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_I915_IFPADDR ; 
 int PAGE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ bootverbose ; 
 struct agp_i810_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct agp_i810_softc *sc;
	uint32_t temp;
	int error;

	sc = FUNC1(dev);
	temp = FUNC3(sc->bdev, AGP_I915_IFPADDR, 4);
	if ((temp & 1) != 0) {
		temp &= ~1;
		if (bootverbose)
			FUNC2(dev,
			    "Found already configured flush page at 0x%jx\n",
			    (uintmax_t)temp);
		sc->sc_bios_allocated_flush_page = 1;
		/*
		 * In the case BIOS initialized the flush pointer (?)
		 * register, expect that BIOS also set up the resource
		 * for the page.
		 */
		error = FUNC0(dev, temp,
		    temp + PAGE_SIZE - 1);
		if (error != 0)
			return (error);
	} else {
		sc->sc_bios_allocated_flush_page = 0;
		error = FUNC0(dev, 0, 0xffffffff);
		if (error != 0)
			return (error);
		temp = FUNC5(sc->sc_flush_page_res);
		FUNC4(sc->bdev, AGP_I915_IFPADDR, temp | 1, 4);
	}
	return (0);
}
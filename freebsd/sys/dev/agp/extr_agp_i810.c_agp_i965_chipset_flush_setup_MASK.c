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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct agp_i810_softc {int sc_bios_allocated_flush_page; int /*<<< orphan*/  bdev; int /*<<< orphan*/  sc_flush_page_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ AGP_I965_IFPADDR ; 
 scalar_t__ PAGE_SIZE ; 
 int UINT32_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ bootverbose ; 
 struct agp_i810_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct agp_i810_softc *sc;
	uint64_t temp;
	uint32_t temp_hi, temp_lo;
	int error;

	sc = FUNC1(dev);

	temp_hi = FUNC3(sc->bdev, AGP_I965_IFPADDR + 4, 4);
	temp_lo = FUNC3(sc->bdev, AGP_I965_IFPADDR, 4);

	if ((temp_lo & 1) != 0) {
		temp = ((uint64_t)temp_hi << 32) | (temp_lo & ~1);
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
		error = FUNC0(dev, 0, ~0);
		if (error != 0)
			return (error);
		temp = FUNC5(sc->sc_flush_page_res);
		FUNC4(sc->bdev, AGP_I965_IFPADDR + 4,
		    (temp >> 32) & UINT32_MAX, 4);
		FUNC4(sc->bdev, AGP_I965_IFPADDR,
		    (temp & UINT32_MAX) | 1, 4);
	}
	return (0);
}
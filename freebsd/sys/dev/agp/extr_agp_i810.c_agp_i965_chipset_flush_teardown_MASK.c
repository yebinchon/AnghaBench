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
typedef  int uint32_t ;
struct agp_i810_softc {int /*<<< orphan*/  bdev; int /*<<< orphan*/  sc_bios_allocated_flush_page; int /*<<< orphan*/ * sc_flush_page_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_I965_IFPADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct agp_i810_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct agp_i810_softc *sc;
	uint32_t temp_lo;

	sc = FUNC1(dev);
	if (sc->sc_flush_page_res == NULL)
		return;
	if (!sc->sc_bios_allocated_flush_page) {
		temp_lo = FUNC2(sc->bdev, AGP_I965_IFPADDR, 4);
		temp_lo &= ~1;
		FUNC3(sc->bdev, AGP_I965_IFPADDR, temp_lo, 4);
	}
	FUNC0(dev);
}
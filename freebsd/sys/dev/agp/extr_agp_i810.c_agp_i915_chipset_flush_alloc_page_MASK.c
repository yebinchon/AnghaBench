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
typedef  scalar_t__ uint64_t ;
struct agp_i810_softc {int sc_flush_page_rid; int /*<<< orphan*/  sc_flush_page_vaddr; int /*<<< orphan*/ * sc_flush_page_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct agp_i810_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev, uint64_t start, uint64_t end)
{
	struct agp_i810_softc *sc;
	device_t vga;

	sc = FUNC2(dev);
	vga = FUNC1(dev);
	sc->sc_flush_page_rid = 100;
	sc->sc_flush_page_res = FUNC0(FUNC1(vga), dev,
	    SYS_RES_MEMORY, &sc->sc_flush_page_rid, start, end, PAGE_SIZE,
	    RF_ACTIVE);
	if (sc->sc_flush_page_res == NULL) {
		FUNC3(dev, "Failed to allocate flush page at 0x%jx\n",
		    (uintmax_t)start);
		return (EINVAL);
	}
	sc->sc_flush_page_vaddr = FUNC5(sc->sc_flush_page_res);
	if (bootverbose) {
		FUNC3(dev, "Allocated flush page phys 0x%jx virt %p\n",
		    (uintmax_t)FUNC4(sc->sc_flush_page_res),
		    sc->sc_flush_page_vaddr);
	}
	return (0);
}
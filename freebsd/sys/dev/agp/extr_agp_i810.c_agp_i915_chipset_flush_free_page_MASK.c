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
struct agp_i810_softc {int /*<<< orphan*/ * sc_flush_page_res; int /*<<< orphan*/  sc_flush_page_rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct agp_i810_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct agp_i810_softc *sc;
	device_t vga;

	sc = FUNC3(dev);
	vga = FUNC2(dev);
	if (sc->sc_flush_page_res == NULL)
		return;
	FUNC0(FUNC2(vga), dev, SYS_RES_MEMORY,
	    sc->sc_flush_page_rid, sc->sc_flush_page_res);
	FUNC1(FUNC2(vga), dev, SYS_RES_MEMORY,
	    sc->sc_flush_page_rid, sc->sc_flush_page_res);
}
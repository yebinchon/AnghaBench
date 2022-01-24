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
struct dpaa_portals_softc {int /*<<< orphan*/  sc_dp_size; int /*<<< orphan*/  sc_dp_pa; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  OCP85XX_TGTIF_BMAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct dpaa_portals_softc* bp_sc ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 struct dpaa_portals_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(device_t dev)
{
	struct dpaa_portals_softc *sc;

	sc = bp_sc = FUNC3(dev);
	
	/* Map bman portal to physical address space */
	if (FUNC4(OCP85XX_TGTIF_BMAN, sc->sc_dp_pa, sc->sc_dp_size)) {
		FUNC1(dev);
		return (ENXIO);
	}
	/* Set portal properties for XX_VirtToPhys() */
	FUNC0(dev);

	return (FUNC2(dev));
}
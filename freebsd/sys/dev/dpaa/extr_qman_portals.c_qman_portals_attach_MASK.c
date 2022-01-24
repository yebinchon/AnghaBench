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
 int /*<<< orphan*/  OCP85XX_TGTIF_QMAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct dpaa_portals_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct dpaa_portals_softc* qp_sc ; 

int
FUNC5(device_t dev)
{
	struct dpaa_portals_softc *sc;

	sc = qp_sc = FUNC2(dev);
	
	/* Map bman portal to physical address space */
	if (FUNC3(OCP85XX_TGTIF_QMAN, sc->sc_dp_pa, sc->sc_dp_size)) {
		FUNC4(dev);
		return (ENXIO);
	}
	/* Set portal properties for XX_VirtToPhys() */
	FUNC0(dev);

	return (FUNC1(dev));
}
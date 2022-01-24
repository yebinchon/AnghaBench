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
struct psycho_softc {int sc_half; } ;
typedef  int ofw_pci_intr_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_addr_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ PSR_PCIA0_INT_MAP ; 
 int /*<<< orphan*/  FUNC2 (struct psycho_softc*,scalar_t__) ; 
 struct psycho_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t bridge, device_t dev, int pin)
{
	struct psycho_softc *sc;
	bus_addr_t intrmap;
	ofw_pci_intr_t mintr;

	mintr = FUNC5(bridge, dev, pin);
	if (FUNC1(mintr))
		return (mintr);
	/*
	 * If this is outside of the range for an intpin, it's likely a full
	 * INO, and no mapping is required at all; this happens on the U30,
	 * where there's no interrupt map at the Psycho node.  Fortunately,
	 * there seem to be no INOs in the intpin range on this boxen, so
	 * this easy heuristics will do.
	 */
	if (pin > 4)
		return (pin);
	/*
	 * Guess the INO; we always assume that this is a non-OBIO device,
	 * and that pin is a "real" intpin number.  Determine the mapping
	 * register to be used by the slot number.
	 * We only need to do this on E450s and U30s, though; here, the
	 * slot numbers for bus A are one-based, while those for bus B
	 * seemingly have an offset of 2 (hence the factor of 3 below).
	 */
	sc = FUNC3(bridge);
	intrmap = PSR_PCIA0_INT_MAP +
	    8 * (FUNC7(dev) - 1 + 3 * sc->sc_half);
	mintr = FUNC0(FUNC2(sc, intrmap)) + pin - 1;
	FUNC4(bridge,
	    "guessing interrupt %d for device %d.%d pin %d\n",
	    (int)mintr, FUNC7(dev), FUNC6(dev), pin);
	return (mintr);
}
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
typedef  int uint16_t ;
struct dwc_softc {int mii_clk; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GMII_ADDRESS ; 
 int GMII_ADDRESS_CR_SHIFT ; 
 int GMII_ADDRESS_GB ; 
 int GMII_ADDRESS_GR_MASK ; 
 int GMII_ADDRESS_GR_SHIFT ; 
 int GMII_ADDRESS_PA_MASK ; 
 int GMII_ADDRESS_PA_SHIFT ; 
 int /*<<< orphan*/  GMII_DATA ; 
 int FUNC1 (struct dwc_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc_softc*,int /*<<< orphan*/ ,int) ; 
 struct dwc_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, int phy, int reg)
{
	struct dwc_softc *sc;
	uint16_t mii;
	size_t cnt;
	int rv = 0;

	sc = FUNC3(dev);

	mii = ((phy & GMII_ADDRESS_PA_MASK) << GMII_ADDRESS_PA_SHIFT)
	    | ((reg & GMII_ADDRESS_GR_MASK) << GMII_ADDRESS_GR_SHIFT)
	    | (sc->mii_clk << GMII_ADDRESS_CR_SHIFT)
	    | GMII_ADDRESS_GB; /* Busy flag */

	FUNC2(sc, GMII_ADDRESS, mii);

	for (cnt = 0; cnt < 1000; cnt++) {
		if (!(FUNC1(sc, GMII_ADDRESS) & GMII_ADDRESS_GB)) {
			rv = FUNC1(sc, GMII_DATA);
			break;
		}
		FUNC0(10);
	}

	return rv;
}
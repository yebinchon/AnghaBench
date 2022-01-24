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
struct ofw_bus_iinfo {scalar_t__ opi_imapsz; } ;
struct ofw_pcib_gen_softc {struct ofw_bus_iinfo ops_iinfo; } ;
struct ofw_pci_register {int dummy; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  pintr ;
typedef  int ofw_pci_intr_t ;
typedef  int /*<<< orphan*/  mintr ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ofw_pcib_gen_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct ofw_bus_iinfo*,struct ofw_pci_register*,int,int*,int,int*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC6(device_t bridge, device_t dev, int intpin)
{
	struct ofw_pcib_gen_softc *sc;
	struct ofw_bus_iinfo *ii;
	struct ofw_pci_register reg;
	ofw_pci_intr_t pintr, mintr;

	sc = FUNC2(bridge);
	ii = &sc->ops_iinfo;
	if (ii->opi_imapsz > 0) {
		pintr = intpin;
		if (FUNC4(FUNC3(dev), ii, &reg,
		    sizeof(reg), &pintr, sizeof(pintr), &mintr, sizeof(mintr),
		    NULL)) {
			/*
			 * If we've found a mapping, return it and don't map
			 * it again on higher levels - that causes problems
			 * in some cases, and never seems to be required.
			 */
			return (mintr);
		}
	} else if (intpin >= 1 && intpin <= 4) {
		/*
		 * When an interrupt map is missing, we need to do the
		 * standard PCI swizzle and continue mapping at the parent.
		 */
		return (FUNC5(bridge, dev, intpin));
	}
	/* Try at the parent. */
	return (FUNC0(FUNC1(FUNC1(
	    bridge)), bridge, intpin));
}
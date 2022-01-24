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
struct ofw_pcib_softc {struct ofw_bus_iinfo ops_iinfo; } ;
struct ofw_pci_register {int phys_hi; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  pintr ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  mintr ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int cell_t ;

/* Variables and functions */
 int OFW_PCI_PHYS_HI_BUSSHIFT ; 
 int OFW_PCI_PHYS_HI_DEVICESHIFT ; 
 int OFW_PCI_PHYS_HI_FUNCTIONSHIFT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ofw_pci_register*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ofw_pcib_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct ofw_bus_iinfo*,struct ofw_pci_register*,int,int*,int,int*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC11(device_t bridge, device_t dev, int intpin)
{
	struct ofw_pcib_softc *sc;
	struct ofw_bus_iinfo *ii;
	struct ofw_pci_register reg;
	cell_t pintr, mintr[2];
	int intrcells;
	phandle_t iparent;

	sc = FUNC3(bridge);
	ii = &sc->ops_iinfo;
	if (ii->opi_imapsz > 0) {
		pintr = intpin;

		/* Fabricate imap information if this isn't an OFW device */
		FUNC1(&reg, sizeof(reg));
		reg.phys_hi = (FUNC7(dev) << OFW_PCI_PHYS_HI_BUSSHIFT) |
		    (FUNC9(dev) << OFW_PCI_PHYS_HI_DEVICESHIFT) |
		    (FUNC8(dev) << OFW_PCI_PHYS_HI_FUNCTIONSHIFT);

		intrcells = FUNC5(FUNC4(dev), ii, &reg,
		    sizeof(reg), &pintr, sizeof(pintr), mintr, sizeof(mintr),
		    &iparent);
		if (intrcells) {
			/*
			 * If we've found a mapping, return it and don't map
			 * it again on higher levels - that causes problems
			 * in some cases, and never seems to be required.
			 */
			mintr[0] = FUNC6(dev, iparent, intrcells,
			    mintr);
			return (mintr[0]);
		}
	} else if (intpin >= 1 && intpin <= 4) {
		/*
		 * When an interrupt map is missing, we need to do the
		 * standard PCI swizzle and continue mapping at the parent.
		 */
		return (FUNC10(bridge, dev, intpin));
	}
	return (FUNC0(FUNC2(FUNC2(
	    bridge)), bridge, intpin));
}
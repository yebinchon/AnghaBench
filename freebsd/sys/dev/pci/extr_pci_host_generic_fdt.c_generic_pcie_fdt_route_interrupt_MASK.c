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
struct ofw_pci_register {int phys_hi; } ;
struct generic_pcie_fdt_softc {int /*<<< orphan*/  pci_iinfo; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  pintr ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  mintr ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int OFW_PCI_PHYS_HI_BUSSHIFT ; 
 int OFW_PCI_PHYS_HI_DEVICESHIFT ; 
 int OFW_PCI_PHYS_HI_FUNCTIONSHIFT ; 
 int PCI_INVALID_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct ofw_pci_register*,int) ; 
 struct generic_pcie_fdt_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ofw_pci_register*,int,int*,int,int*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t bus, device_t dev, int pin)
{
	struct generic_pcie_fdt_softc *sc;
	struct ofw_pci_register reg;
	uint32_t pintr, mintr[4];
	phandle_t iparent;
	int intrcells;

	sc = FUNC1(bus);
	pintr = pin;

	FUNC0(&reg, sizeof(reg));
	reg.phys_hi = (FUNC6(dev) << OFW_PCI_PHYS_HI_BUSSHIFT) |
	    (FUNC8(dev) << OFW_PCI_PHYS_HI_DEVICESHIFT) |
	    (FUNC7(dev) << OFW_PCI_PHYS_HI_FUNCTIONSHIFT);

	intrcells = FUNC4(FUNC3(dev),
	    &sc->pci_iinfo, &reg, sizeof(reg), &pintr, sizeof(pintr),
	    mintr, sizeof(mintr), &iparent);
	if (intrcells) {
		pintr = FUNC5(dev, iparent, intrcells, mintr);
		return (pintr);
	}

	FUNC2(bus, "could not route pin %d for device %d.%d\n",
	    pin, FUNC8(dev), FUNC7(dev));
	return (PCI_INVALID_IRQ);
}
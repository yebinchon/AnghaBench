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
struct ofw_pci_softc {int /*<<< orphan*/  sc_pci_iinfo; } ;
struct ofw_pci_register {int phys_hi; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  int /*<<< orphan*/  pintr ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  mintr ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int OFW_PCI_PHYS_HI_BUSSHIFT ; 
 int OFW_PCI_PHYS_HI_DEVICESHIFT ; 
 int OFW_PCI_PHYS_HI_FUNCTIONSHIFT ; 
 int PCI_INTR_PINS ; 
 int PCI_INVALID_IRQ ; 
 int PCI_MAP_INTR ; 
 int /*<<< orphan*/  FUNC0 (struct ofw_pci_register*,int) ; 
 struct ofw_pci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ofw_pci_register*,int,int*,int,int*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(device_t bus, device_t dev, int pin)
{
	struct ofw_pci_softc *sc;
	struct ofw_pci_register reg;
	uint32_t pintr, mintr[PCI_MAP_INTR];
	int intrcells;
	phandle_t iparent;

	sc = FUNC1(bus);
	pintr = pin;

	/* Fabricate imap information in case this isn't an OFW device */
	FUNC0(&reg, sizeof(reg));
	reg.phys_hi = (FUNC6(dev) << OFW_PCI_PHYS_HI_BUSSHIFT) |
	    (FUNC8(dev) << OFW_PCI_PHYS_HI_DEVICESHIFT) |
	    (FUNC7(dev) << OFW_PCI_PHYS_HI_FUNCTIONSHIFT);

	intrcells = FUNC4(FUNC3(dev),
	    &sc->sc_pci_iinfo, &reg, sizeof(reg), &pintr, sizeof(pintr),
	    mintr, sizeof(mintr), &iparent);
	if (intrcells != 0) {
		pintr = FUNC5(dev, iparent, intrcells, mintr);
		return (pintr);
	}

	/*
	 * Maybe it's a real interrupt, not an intpin
	 */
	if (pin > PCI_INTR_PINS)
		return (pin);

	FUNC2(bus, "could not route pin %d for device %d.%d\n",
	    pin, FUNC8(dev), FUNC7(dev));
	return (PCI_INVALID_IRQ);
}
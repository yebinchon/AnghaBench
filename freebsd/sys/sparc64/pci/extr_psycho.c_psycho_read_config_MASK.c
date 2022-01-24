#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ sc_pci_secbus; int /*<<< orphan*/ * sc_pci_bh; int /*<<< orphan*/  sc_pci_cfgt; } ;
struct psycho_softc {int* sc_pci_hpbcfg; TYPE_1__ sc_ops; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 size_t OFW_PCI_CS_CONFIG ; 
 scalar_t__ PCIR_STATUS ; 
 int /*<<< orphan*/  PCI_REGMAX ; 
 scalar_t__ PCS_DEVICE ; 
 scalar_t__ PCS_FUNC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct psycho_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static uint32_t
FUNC7(device_t dev, u_int bus, u_int slot, u_int func, u_int reg,
    int width)
{
	struct psycho_softc *sc;

	sc = FUNC2(dev);
	/*
	 * The Hummingbird and Sabre bridges are picky in that they
	 * only allow their config space to be accessed using the
	 * "native" width of the respective register being accessed
	 * and return semi-random other content of their config space
	 * otherwise.  Given that the PCI specs don't say anything
	 * about such a (unusual) limitation and lots of stuff expects
	 * to be able to access the contents of the config space at
	 * any width we allow just that.  We do this by using a copy
	 * of the header of the bridge (the rest is all zero anyway)
	 * read during attach (expect for PCIR_STATUS) in order to
	 * simplify things.
	 * The Psycho bridges contain a dupe of their header at 0x80
	 * which we nullify that way also.
	 */
	if (bus == sc->sc_ops.sc_pci_secbus && slot == PCS_DEVICE &&
	    func == PCS_FUNC) {
		if (reg % width != 0)
			return (-1);

		if (reg >= sizeof(sc->sc_pci_hpbcfg))
			return (0);

		if ((reg < PCIR_STATUS && reg + width > PCIR_STATUS) ||
		    reg == PCIR_STATUS || reg == PCIR_STATUS + 1)
			FUNC4(&sc->sc_pci_hpbcfg[PCIR_STATUS],
			    FUNC1(sc->sc_ops.sc_pci_cfgt,
			    sc->sc_ops.sc_pci_bh[OFW_PCI_CS_CONFIG],
			    FUNC0(sc->sc_ops.sc_pci_secbus,
			    PCS_DEVICE, PCS_FUNC, PCIR_STATUS)));

		switch (width) {
		case 1:
			return (sc->sc_pci_hpbcfg[reg]);
		case 2:
			return (FUNC3(&sc->sc_pci_hpbcfg[reg]));
		case 4:
			return (FUNC5(&sc->sc_pci_hpbcfg[reg]));
		}
	}

	return (FUNC6(dev, PCI_REGMAX,
	    FUNC0(bus, slot, func, reg), bus, slot, func, reg,
	    width));
}
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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ u_int ;
struct resource {int dummy; } ;
struct pci_dw_softc {scalar_t__ root_bus; scalar_t__ sub_bus; struct resource* cfg_res; int /*<<< orphan*/  cfg_size; int /*<<< orphan*/  cfg_pa; struct resource* dbi_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int IATU_CTRL1_TYPE_CFG0 ; 
 int IATU_CTRL1_TYPE_CFG1 ; 
 scalar_t__ PCI_FUNCMAX ; 
 scalar_t__ PCI_REGMAX ; 
 scalar_t__ PCI_SLOTMAX ; 
 int /*<<< orphan*/  FUNC3 (struct resource*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct pci_dw_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pci_dw_softc*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC8 (struct pci_dw_softc*,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(device_t dev, u_int bus, u_int slot,
    u_int func, u_int reg, uint32_t val, int bytes)
{
	struct pci_dw_softc *sc;
	struct resource	*res;
	uint64_t addr;
	int type, rv;

	sc = FUNC6(dev);
	if (!FUNC7(sc, bus, slot, func, reg))
		return;

	if ((slot > PCI_SLOTMAX) || (func > PCI_FUNCMAX) ||
	    (reg > PCI_REGMAX))
		return;

	if (bus == sc->root_bus) {
		res = (sc->dbi_res);
	} else {
		addr = FUNC0(bus) | FUNC2(slot) |
		    FUNC1(func);
		if (bus == sc->sub_bus)
			type = IATU_CTRL1_TYPE_CFG0;
		else
			type = IATU_CTRL1_TYPE_CFG1;
		rv = FUNC8(sc, 1, type,
		    sc->cfg_pa, addr, sc->cfg_size);
		if (rv != 0)
			return ;
		res = sc->cfg_res;
	}


	switch (bytes) {
	case 1:
		FUNC3(res, reg, val);
		break;
	case 2:
		FUNC4(res, reg, val);
		break;
	case 4:
		FUNC5(res, reg, val);
		break;
	default:
		break;
	}
}
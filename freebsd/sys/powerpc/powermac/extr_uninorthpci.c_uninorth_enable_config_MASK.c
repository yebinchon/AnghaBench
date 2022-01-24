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
typedef  int u_int ;
struct TYPE_2__ {int sc_bus; } ;
struct uninorth_softc {int sc_skipslot; int sc_ver; int /*<<< orphan*/  sc_addr; TYPE_1__ pci_sc; int /*<<< orphan*/  sc_cfg_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct uninorth_softc *sc, u_int bus, u_int slot,
    u_int func, u_int reg)
{
	uint32_t	cfgval;

	FUNC1(&sc->sc_cfg_mtx, MA_OWNED);

	if (sc->sc_skipslot == slot)
		return (0);

	/*
	 * Issue type 0 configuration space accesses for the root bus.
	 *
	 * NOTE: On U4, issue only type 1 accesses. There is a secret
	 * PCI Express <-> PCI Express bridge not present in the device tree,
	 * and we need to route all of our configuration space through it.
	 */
	if (sc->pci_sc.sc_bus == bus && sc->sc_ver < 4) {
		/*
		 * No slots less than 11 on the primary bus on U3 and lower
		 */
		if (slot < 11)
			return (0);

		cfgval = (1 << slot) | (func << 8) | (reg & 0xfc);
	} else {
		cfgval = (bus << 16) | (slot << 11) | (func << 8) |
		    (reg & 0xfc) | 1;
	}

	/* Set extended register bits on U4 */
	if (sc->sc_ver == 4)
		cfgval |= (reg >> 8) << 28;

	do {
		FUNC2(sc->sc_addr, cfgval);
	} while (FUNC0(sc->sc_addr) != cfgval);

	return (1);
}
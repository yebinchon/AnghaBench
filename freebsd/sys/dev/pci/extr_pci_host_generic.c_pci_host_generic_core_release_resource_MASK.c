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
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct generic_pcie_core_softc {int /*<<< orphan*/  ecam; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int PCI_RES_BUS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct generic_pcie_core_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct rman* FUNC3 (struct generic_pcie_core_softc*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,struct rman*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 

int
FUNC7(device_t dev, device_t child, int type,
    int rid, struct resource *res)
{
	struct generic_pcie_core_softc *sc;
	struct rman *rm;

	sc = FUNC2(dev);

#if defined(NEW_PCIB) && defined(PCI_RES_BUS)
	if (type == PCI_RES_BUS) {
		return (pci_domain_release_bus(sc->ecam, child, rid, res));
	}
#endif

	rm = FUNC3(sc, type);
	if (rm != NULL) {
		FUNC0(FUNC5(res, rm), ("rman mismatch"));
		FUNC6(res);
	}

	return (FUNC1(dev, child, type, rid, res));
}
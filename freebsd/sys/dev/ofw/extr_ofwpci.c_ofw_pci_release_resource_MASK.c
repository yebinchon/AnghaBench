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
struct ofw_pci_softc {int /*<<< orphan*/  sc_pci_domain; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int PCI_RES_BUS ; 
 int RF_ACTIVE ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct ofw_pci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 struct rman* FUNC4 (struct ofw_pci_softc*,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,struct rman*) ; 
 int FUNC8 (struct resource*) ; 

__attribute__((used)) static int
FUNC9(device_t bus, device_t child, int type, int rid,
    struct resource *res)
{
	struct ofw_pci_softc *sc;
	struct rman *rm;
	int error;

	sc = FUNC3(bus);

#if defined(NEW_PCIB) && defined(PCI_RES_BUS)
	if (type == PCI_RES_BUS)
		return (pci_domain_release_bus(sc->sc_pci_domain, child, rid,
		    res));
#endif

	rm = FUNC4(sc, type, FUNC6(res));
	if (rm == NULL) {
		return (FUNC2(bus, child, type, rid,
		    res));
	}
	FUNC0(FUNC7(res, rm), ("rman mismatch"));

	if (FUNC6(res) & RF_ACTIVE) {
		error = FUNC1(child, type, rid, res);
		if (error != 0)
			return (error);
	}
	return (FUNC8(res));
}
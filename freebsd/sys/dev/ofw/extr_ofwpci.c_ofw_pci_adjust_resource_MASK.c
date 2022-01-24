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
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PCI_RES_BUS ; 
 int RF_ACTIVE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ofw_pci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 struct rman* FUNC3 (struct ofw_pci_softc*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct resource*) ; 
 int FUNC7 (struct resource*,struct rman*) ; 

__attribute__((used)) static int
FUNC8(device_t bus, device_t child, int type,
    struct resource *res, rman_res_t start, rman_res_t end)
{
	struct rman *rm;
	struct ofw_pci_softc *sc;

	sc = FUNC2(bus);
#if defined(NEW_PCIB) && defined(PCI_RES_BUS)
	if (type == PCI_RES_BUS)
		return (pci_domain_adjust_bus(sc->sc_pci_domain, child, res,
		    start, end));
#endif

	rm = FUNC3(sc, type, FUNC6(res));
	if (rm == NULL) {
		return (FUNC1(bus, child, type, res,
		    start, end));
	}
	FUNC0(FUNC7(res, rm), ("rman mismatch"));
	FUNC0(!(FUNC6(res) & RF_ACTIVE),
	    ("active resources cannot be adjusted"));

	return (FUNC5(res, start, end));
}
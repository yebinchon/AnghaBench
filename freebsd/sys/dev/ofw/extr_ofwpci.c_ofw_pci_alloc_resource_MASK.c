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
typedef  int u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct ofw_pci_softc {int /*<<< orphan*/  sc_pci_domain; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCI_RES_BUS ; 
 int RF_ACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct resource* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct ofw_pci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct rman* FUNC5 (struct ofw_pci_softc*,int,int) ; 
 struct resource* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*) ; 
 struct resource* FUNC8 (struct rman*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,int) ; 

__attribute__((used)) static struct resource *
FUNC10(device_t bus, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct ofw_pci_softc *sc;
	struct resource *rv;
	struct rman *rm;
	int needactivate;


	needactivate = flags & RF_ACTIVE;
	flags &= ~RF_ACTIVE;

	sc = FUNC3(bus);

#if defined(NEW_PCIB) && defined(PCI_RES_BUS)
	if (type ==  PCI_RES_BUS) {
		  return (pci_domain_alloc_bus(sc->sc_pci_domain, child, rid,
		      start, end, count, flags | needactivate));
	}
#endif

	rm = FUNC5(sc, type, flags);
	if (rm == NULL)  {
		return (FUNC1(bus, child, type, rid,
		    start, end, count, flags | needactivate));
	}

	rv = FUNC8(rm, start, end, count, flags, child);
	if (rv == NULL) {
		FUNC4(bus, "failed to reserve resource for %s\n",
		    FUNC2(child));
		return (NULL);
	}

	FUNC9(rv, *rid);

	if (needactivate) {
		if (FUNC0(child, type, *rid, rv) != 0) {
			FUNC4(bus,
			    "failed to activate resource for %s\n",
			    FUNC2(child));
			FUNC7(rv);
			return (NULL);
		}
	}

	return (rv);
}
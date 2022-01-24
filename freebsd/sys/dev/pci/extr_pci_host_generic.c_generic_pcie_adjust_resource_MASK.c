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
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCI_RES_BUS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct generic_pcie_core_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rman* FUNC2 (struct generic_pcie_core_softc*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, int type,
    struct resource *res, rman_res_t start, rman_res_t end)
{
	struct generic_pcie_core_softc *sc;
	struct rman *rm;

	sc = FUNC1(dev);
#if defined(NEW_PCIB) && defined(PCI_RES_BUS)
	if (type == PCI_RES_BUS)
		return (pci_domain_adjust_bus(sc->ecam, child, res, start,
		    end));
#endif

	rm = FUNC2(sc, type);
	if (rm != NULL)
		return (FUNC4(res, start, end));
	return (FUNC0(dev, child, type, res, start, end));
}
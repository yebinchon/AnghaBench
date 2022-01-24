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
typedef  scalar_t__ uint64_t ;
struct resource {int dummy; } ;
struct generic_pcie_core_softc {TYPE_1__* ranges; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ phys_base; scalar_t__ pci_base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int ENXIO ; 
 int MAX_RANGES_TUPLES ; 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct generic_pcie_core_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC4 (struct resource*) ; 
 scalar_t__ FUNC5 (struct resource*) ; 
 scalar_t__ FUNC6 (struct resource*) ; 
 int /*<<< orphan*/  FUNC7 (struct resource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,scalar_t__) ; 

__attribute__((used)) static int
FUNC9(device_t dev, device_t child, int type,
    int rid, struct resource *r)
{
	struct generic_pcie_core_softc *sc;
	uint64_t phys_base;
	uint64_t pci_base;
	uint64_t size;
	int found;
	int res;
	int i;

	sc = FUNC2(dev);

	if ((res = FUNC4(r)) != 0)
		return (res);

	switch (type) {
	case SYS_RES_IOPORT:
	case SYS_RES_MEMORY:
		found = 0;
		for (i = 0; i < MAX_RANGES_TUPLES; i++) {
			pci_base = sc->ranges[i].pci_base;
			phys_base = sc->ranges[i].phys_base;
			size = sc->ranges[i].size;

			if ((FUNC6(r) >= pci_base) && (FUNC6(r) < (pci_base + size))) {
				found = 1;
				break;
			}
		}
		if (found) {
			FUNC8(r, FUNC6(r) - pci_base + phys_base);
			FUNC7(r, FUNC5(r) - pci_base + phys_base);
			res = FUNC0(FUNC1(dev),
			    child, type, rid, r);
		} else {
			FUNC3(dev,
			    "Failed to activate %s resource\n",
			    type == SYS_RES_IOPORT ? "IOPORT" : "MEMORY");
			res = ENXIO;
		}
		break;
	case SYS_RES_IRQ:
		res = FUNC0(FUNC1(dev), child,
		    type, rid, r);
		break;
	default:
		break;
	}

	return (res);
}
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
typedef  scalar_t__ vm_paddr_t ;
struct resource {int dummy; } ;
struct ofw_pci_softc {int sc_nrange; struct ofw_pci_range* sc_range; } ;
struct ofw_pci_range {int pci_hi; scalar_t__ pci; scalar_t__ size; scalar_t__ host; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/ * bus_space_tag_t ;
typedef  scalar_t__ bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int OFW_PCI_PHYS_HI_SPACEMASK ; 
#define  OFW_PCI_PHYS_HI_SPACE_IO 130 
#define  OFW_PCI_PHYS_HI_SPACE_MEM32 129 
#define  OFW_PCI_PHYS_HI_SPACE_MEM64 128 
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct ofw_pci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct resource*) ; 
 int /*<<< orphan*/  FUNC6 (struct resource*) ; 
 scalar_t__ FUNC7 (struct resource*) ; 
 int /*<<< orphan*/  FUNC8 (struct resource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct resource*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*,void*) ; 

__attribute__((used)) static int
FUNC11(device_t bus, device_t child, int type, int rid,
    struct resource *res)
{
	struct ofw_pci_softc *sc;
	bus_space_handle_t handle;
	bus_space_tag_t tag;
	struct ofw_pci_range *rp;
	vm_paddr_t start;
	int space;
	int rv;

	sc = FUNC3(bus);

	if (type != SYS_RES_IOPORT && type != SYS_RES_MEMORY) {
		return (FUNC1(bus, child, type, rid,
		    res));
	}

	start = (vm_paddr_t)FUNC7(res);

	/*
	 * Map this through the ranges list
	 */
	for (rp = sc->sc_range; rp < sc->sc_range + sc->sc_nrange &&
	    rp->pci_hi != 0; rp++) {
		if (start < rp->pci || start >= rp->pci + rp->size)
			continue;

		switch (rp->pci_hi & OFW_PCI_PHYS_HI_SPACEMASK) {
		case OFW_PCI_PHYS_HI_SPACE_IO:
			space = SYS_RES_IOPORT;
			break;
		case OFW_PCI_PHYS_HI_SPACE_MEM32:
		case OFW_PCI_PHYS_HI_SPACE_MEM64:
			space = SYS_RES_MEMORY;
			break;
		default:
			space = -1;
			}

		if (type == space) {
			start += (rp->host - rp->pci);
			break;
		}
	}

	if (bootverbose)
		FUNC4("ofw_pci mapdev: start %jx, len %jd\n",
		    (rman_res_t)start, FUNC6(res));

	tag = FUNC0(child, child);
	if (tag == NULL)
		return (ENOMEM);

	FUNC9(res, tag);
	rv = FUNC2(tag, start,
	    FUNC6(res), 0, &handle);
	if (rv != 0)
		return (ENOMEM);

	FUNC8(res, handle);
	FUNC10(res, (void *)handle); /* XXX  for powerpc only ? */

	return (FUNC5(res));
}
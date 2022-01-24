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
struct resource {int dummy; } ;
struct ofw_pci_softc {scalar_t__* sc_pci_bh; struct bus_space_tag* sc_pci_iot; } ;
struct bus_space_tag {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 size_t OFW_PCI_CS_IO ; 
 size_t OFW_PCI_CS_MEM32 ; 
 int /*<<< orphan*/  PCI_MEMORY_BUS_SPACE ; 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct ofw_pci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct resource*) ; 
 scalar_t__ FUNC3 (struct resource*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,struct bus_space_tag*) ; 
 struct bus_space_tag* FUNC6 (struct resource*,int /*<<< orphan*/ ) ; 

int
FUNC7(device_t bus, device_t child, int type, int rid,
    struct resource *r)
{
	struct ofw_pci_softc *sc;
	struct bus_space_tag *tag;

	sc = FUNC1(bus);
	switch (type) {
	case SYS_RES_IRQ:
		return (FUNC0(bus, child, type, rid,
		    r));
	case SYS_RES_MEMORY:
		tag = FUNC6(r, PCI_MEMORY_BUS_SPACE);
		if (tag == NULL)
			return (ENOMEM);
		FUNC5(r, tag);
		FUNC4(r, sc->sc_pci_bh[OFW_PCI_CS_MEM32] +
		    FUNC3(r));
		break;
	case SYS_RES_IOPORT:
		FUNC5(r, sc->sc_pci_iot);
		FUNC4(r, sc->sc_pci_bh[OFW_PCI_CS_IO] +
		    FUNC3(r));
		break;
	}
	return (FUNC2(r));
}
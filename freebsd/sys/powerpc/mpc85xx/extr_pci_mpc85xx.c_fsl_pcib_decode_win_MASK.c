#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int sc_nrange; TYPE_1__* sc_range; } ;
struct fsl_pcib_softc {int sc_iomem_target; int sc_ioport_target; int sc_ip_maj; TYPE_2__ pci_sc; int /*<<< orphan*/  sc_iomem_end; scalar_t__ sc_iomem_start; int /*<<< orphan*/  sc_ioport_end; scalar_t__ sc_ioport_start; int /*<<< orphan*/  sc_res; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int pci_hi; scalar_t__ size; int /*<<< orphan*/  host; scalar_t__ pci; } ;

/* Variables and functions */
 int /*<<< orphan*/  Maxmem ; 
 int OFW_PCI_PHYS_HI_SPACEMASK ; 
#define  OFW_PCI_PHYS_HI_SPACE_CONFIG 131 
#define  OFW_PCI_PHYS_HI_SPACE_IO 130 
#define  OFW_PCI_PHYS_HI_SPACE_MEM32 129 
#define  OFW_PCI_PHYS_HI_SPACE_MEM64 128 
 int PIWAR_TRGT_CCSR ; 
 int PIWAR_TRGT_LOCAL ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  ccsrbar_pa ; 
 int /*<<< orphan*/  ccsrbar_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_pcib_softc*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_pcib_softc*,int,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(phandle_t node, struct fsl_pcib_softc *sc)
{
	device_t dev;
	int error, i, trgt;

	dev = sc->sc_dev;

	FUNC2(sc, 0, -1, 0, 0, 0);

	/*
	 * Configure LAW decode windows.
	 */
	error = FUNC4(sc->sc_res, &sc->sc_iomem_target,
	    &sc->sc_ioport_target);
	if (error != 0) {
		FUNC0(dev, "could not retrieve PCI LAW target info\n");
		return (error);
	}

	for (i = 0; i < sc->pci_sc.sc_nrange; i++) {
		switch (sc->pci_sc.sc_range[i].pci_hi &
		    OFW_PCI_PHYS_HI_SPACEMASK) {
		case OFW_PCI_PHYS_HI_SPACE_CONFIG:
			continue;
		case OFW_PCI_PHYS_HI_SPACE_IO:
			trgt = sc->sc_ioport_target;
			FUNC2(sc, 2, SYS_RES_IOPORT,
			    sc->pci_sc.sc_range[i].host,
			    sc->pci_sc.sc_range[i].size,
			    sc->pci_sc.sc_range[i].pci);
			sc->sc_ioport_start = sc->pci_sc.sc_range[i].pci;
			sc->sc_ioport_end = sc->pci_sc.sc_range[i].pci +
			    sc->pci_sc.sc_range[i].size - 1;
			break;
		case OFW_PCI_PHYS_HI_SPACE_MEM32:
		case OFW_PCI_PHYS_HI_SPACE_MEM64:
			trgt = sc->sc_iomem_target;
			FUNC2(sc, 1, SYS_RES_MEMORY,
			    sc->pci_sc.sc_range[i].host,
			    sc->pci_sc.sc_range[i].size,
			    sc->pci_sc.sc_range[i].pci);
			sc->sc_iomem_start = sc->pci_sc.sc_range[i].pci;
			sc->sc_iomem_end = sc->pci_sc.sc_range[i].pci +
			    sc->pci_sc.sc_range[i].size - 1;
			break;
		default:
			FUNC5("Unknown range type %#x\n",
			    sc->pci_sc.sc_range[i].pci_hi &
			    OFW_PCI_PHYS_HI_SPACEMASK);
		}
		error = FUNC3(trgt, sc->pci_sc.sc_range[i].host,
		    sc->pci_sc.sc_range[i].size);
		if (error != 0) {
			FUNC0(dev, "could not program LAW for range "
			    "%d\n", i);
			return (error);
		}
	}

	/*
	 * Set outbout and inbound windows.
	 */
	FUNC2(sc, 3, -1, 0, 0, 0);
	FUNC2(sc, 4, -1, 0, 0, 0);

	FUNC1(sc, 1, -1, 0, 0, 0);
	FUNC1(sc, 2, -1, 0, 0, 0);
	FUNC1(sc, 3, PIWAR_TRGT_LOCAL, 0,
	    FUNC6(Maxmem), 0);

	/* Direct-map the CCSR for MSIs. */
	/* Freescale PCIe 2.x has a dedicated MSI window. */
	/* inbound window 8 makes it hit 0xD00 offset, the MSI window. */
	if (sc->sc_ip_maj >= 2)
		FUNC1(sc, 8, PIWAR_TRGT_CCSR, ccsrbar_pa,
		    ccsrbar_size, ccsrbar_pa);
	else
		FUNC1(sc, 1, PIWAR_TRGT_CCSR, ccsrbar_pa,
		    ccsrbar_size, ccsrbar_pa);

	return (0);
}
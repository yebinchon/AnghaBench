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
typedef  int /*<<< orphan*/  u_int ;
struct pci_devinfo {int dummy; } ;
struct TYPE_3__ {scalar_t__ intpin; } ;
struct TYPE_4__ {int /*<<< orphan*/  resources; TYPE_1__ cfg; } ;
struct ofw_pcibus_devinfo {TYPE_2__ opd_dinfo; int /*<<< orphan*/ * opd_dma_tag; int /*<<< orphan*/  opd_obdinfo; } ;
struct ofw_pci_register {int /*<<< orphan*/  phys_hi; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  pcir ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (scalar_t__,char*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  PCIR_INTLINE ; 
 int PCI_INVALID_IRQ ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct pci_devinfo*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_devinfo*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(device_t dev, u_int domain, u_int busno)
{
	device_t pcib;
	struct ofw_pci_register pcir;
	struct ofw_pcibus_devinfo *dinfo;
	phandle_t node, child;
	u_int func, slot;
	int intline;

	pcib = FUNC7(dev);
	node = FUNC9(dev);

	for (child = FUNC2(node); child != 0; child = FUNC5(child)) {
		if (FUNC3(child, "reg", (pcell_t *)&pcir,
		    sizeof(pcir)) == -1)
			continue;
		slot = FUNC0(pcir.phys_hi);
		func = FUNC1(pcir.phys_hi);

		/* Some OFW device trees contain dupes. */
		if (FUNC12(domain, busno, slot, func) != NULL)
			continue;

		/*
		 * The preset in the intline register is usually bogus.  Reset
		 * it such that the PCI code will reroute the interrupt if
		 * needed.
		 */

		intline = PCI_INVALID_IRQ;
		if (FUNC4(child, "interrupts") > 0)
			intline = 0;
		FUNC6(pcib, busno, slot, func, PCIR_INTLINE,
		    intline, 1);

		/*
		 * Now set up the PCI and OFW bus layer devinfo and add it
		 * to the PCI bus.
		 */

		dinfo = (struct ofw_pcibus_devinfo *)FUNC14(pcib, dev,
		    domain, busno, slot, func);
		if (dinfo == NULL)
			continue;
		if (FUNC8(&dinfo->opd_obdinfo, child) !=
		    0) {
			FUNC13((struct pci_devinfo *)dinfo);
			continue;
		}
		dinfo->opd_dma_tag = NULL;
		FUNC11(dev, (struct pci_devinfo *)dinfo);

		/*
		 * Some devices don't have an intpin set, but do have
		 * interrupts. These are fully specified, and set in the
		 * interrupts property, so add that value to the device's
		 * resource list.
		 */
		if (dinfo->opd_dinfo.cfg.intpin == 0)
			FUNC10(dev, child,
				&dinfo->opd_dinfo.resources, NULL);
	}
}
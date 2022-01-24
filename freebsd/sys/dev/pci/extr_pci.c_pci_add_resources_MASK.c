#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct resource_list {int dummy; } ;
struct pci_quirk {int devid; scalar_t__ type; scalar_t__ arg1; } ;
struct TYPE_3__ {int device; int vendor; int nummaps; scalar_t__ intpin; int /*<<< orphan*/  intline; } ;
struct pci_devinfo {struct resource_list resources; TYPE_1__ cfg; } ;
typedef  TYPE_1__ pcicfgregs ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ PCIC_SERIALBUS ; 
 scalar_t__ PCIC_STORAGE ; 
 scalar_t__ PCIP_SERIALBUS_USB_EHCI ; 
 scalar_t__ PCIP_SERIALBUS_USB_OHCI ; 
 scalar_t__ PCIP_SERIALBUS_USB_UHCI ; 
 scalar_t__ PCIP_SERIALBUS_USB_XHCI ; 
 scalar_t__ PCIP_STORAGE_IDE_MASTERDEV ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ PCIS_SERIALBUS_USB ; 
 scalar_t__ PCIS_STORAGE_IDE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_QUIRK_MAP_REG ; 
 scalar_t__ PCI_QUIRK_UNMAP_REG ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct pci_devinfo* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,struct resource_list*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource_list*,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 struct pci_quirk* pci_quirks ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,struct resource_list*) ; 
 scalar_t__ pci_usb_takeover ; 
 int /*<<< orphan*/ * FUNC15 (struct resource_list*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

void
FUNC18(device_t bus, device_t dev, int force, uint32_t prefetchmask)
{
	struct pci_devinfo *dinfo;
	pcicfgregs *cfg;
	struct resource_list *rl;
	const struct pci_quirk *q;
	uint32_t devid;
	int i;

	dinfo = FUNC2(dev);
	cfg = &dinfo->cfg;
	rl = &dinfo->resources;
	devid = (cfg->device << 16) | cfg->vendor;

	/* Allocate resources using Enhanced Allocation */
	FUNC6(bus, dev, 0);

	/* ATA devices needs special map treatment */
	if ((FUNC10(dev) == PCIC_STORAGE) &&
	    (FUNC12(dev) == PCIS_STORAGE_IDE) &&
	    ((FUNC11(dev) & PCIP_STORAGE_IDE_MASTERDEV) ||
	     (!FUNC13(dev, FUNC0(0), 4) &&
	      !FUNC13(dev, FUNC0(2), 4))) )
		FUNC8(bus, dev, rl, force, prefetchmask);
	else
		for (i = 0; i < cfg->nummaps;) {
			/* Skip resources already managed by EA */
			if ((FUNC15(rl, SYS_RES_MEMORY, FUNC0(i)) != NULL) ||
			    (FUNC15(rl, SYS_RES_IOPORT, FUNC0(i)) != NULL) ||
			    FUNC9(dev, FUNC0(i))) {
				i++;
				continue;
			}

			/*
			 * Skip quirked resources.
			 */
			for (q = &pci_quirks[0]; q->devid != 0; q++)
				if (q->devid == devid &&
				    q->type == PCI_QUIRK_UNMAP_REG &&
				    q->arg1 == FUNC0(i))
					break;
			if (q->devid != 0) {
				i++;
				continue;
			}
			i += FUNC5(bus, dev, FUNC0(i), rl, force,
			    prefetchmask & (1 << i));
		}

	/*
	 * Add additional, quirked resources.
	 */
	for (q = &pci_quirks[0]; q->devid != 0; q++)
		if (q->devid == devid && q->type == PCI_QUIRK_MAP_REG)
			FUNC5(bus, dev, q->arg1, rl, force, 0);

	if (cfg->intpin > 0 && FUNC1(cfg->intline)) {
#ifdef __PCI_REROUTE_INTERRUPT
		/*
		 * Try to re-route interrupts. Sometimes the BIOS or
		 * firmware may leave bogus values in these registers.
		 * If the re-route fails, then just stick with what we
		 * have.
		 */
		pci_assign_interrupt(bus, dev, 1);
#else
		FUNC7(bus, dev, 0);
#endif
	}

	if (pci_usb_takeover && FUNC10(dev) == PCIC_SERIALBUS &&
	    FUNC12(dev) == PCIS_SERIALBUS_USB) {
		if (FUNC11(dev) == PCIP_SERIALBUS_USB_XHCI)
			FUNC17(dev);
		else if (FUNC11(dev) == PCIP_SERIALBUS_USB_EHCI)
			FUNC3(dev);
		else if (FUNC11(dev) == PCIP_SERIALBUS_USB_OHCI)
			FUNC4(dev);
		else if (FUNC11(dev) == PCIP_SERIALBUS_USB_UHCI)
			FUNC16(dev);
	}

#if defined(NEW_PCIB) && defined(PCI_RES_BUS)
	/*
	 * Reserve resources for secondary bus ranges behind bridge
	 * devices.
	 */
	pci_reserve_secbus(bus, dev, cfg, rl);
#endif
}
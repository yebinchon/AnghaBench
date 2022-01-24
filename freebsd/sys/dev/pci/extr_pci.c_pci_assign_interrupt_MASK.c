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
typedef  int /*<<< orphan*/  tunable_name ;
struct TYPE_2__ {scalar_t__ intpin; int domain; int bus; int slot; int intline; } ;
struct pci_devinfo {int /*<<< orphan*/  resources; TYPE_1__ cfg; } ;
typedef  TYPE_1__ pcicfgregs ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCIR_INTLINE ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PCI_INVALID_IRQ ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ FUNC2 (char*,int*) ; 
 struct pci_devinfo* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int,int,int,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(device_t bus, device_t dev, int force_route)
{
	struct pci_devinfo *dinfo = FUNC3(dev);
	pcicfgregs *cfg = &dinfo->cfg;
	char tunable_name[64];
	int irq;

	/* Has to have an intpin to have an interrupt. */
	if (cfg->intpin == 0)
		return;

	/* Let the user override the IRQ with a tunable. */
	irq = PCI_INVALID_IRQ;
	FUNC6(tunable_name, sizeof(tunable_name),
	    "hw.pci%d.%d.%d.INT%c.irq",
	    cfg->domain, cfg->bus, cfg->slot, cfg->intpin + 'A' - 1);
	if (FUNC2(tunable_name, &irq) && (irq >= 255 || irq <= 0))
		irq = PCI_INVALID_IRQ;

	/*
	 * If we didn't get an IRQ via the tunable, then we either use the
	 * IRQ value in the intline register or we ask the bus to route an
	 * interrupt for us.  If force_route is true, then we only use the
	 * value in the intline register if the bus was unable to assign an
	 * IRQ.
	 */
	if (!FUNC1(irq)) {
		if (!FUNC1(cfg->intline) || force_route)
			irq = FUNC0(bus, dev);
		if (!FUNC1(irq))
			irq = cfg->intline;
	}

	/* If after all that we don't have an IRQ, just bail. */
	if (!FUNC1(irq))
		return;

	/* Update the config register if it changed. */
	if (irq != cfg->intline) {
		cfg->intline = irq;
		FUNC4(dev, PCIR_INTLINE, irq, 1);
	}

	/* Add this IRQ as rid 0 interrupt resource. */
	FUNC5(&dinfo->resources, SYS_RES_IRQ, 0, irq, irq, 1);
}
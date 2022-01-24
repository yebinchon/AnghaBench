#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct link {size_t l_irq; int /*<<< orphan*/  l_references; int /*<<< orphan*/  l_routed; } ;
struct acpi_pci_link_softc {int pl_num_links; struct link* pl_links; scalar_t__ pl_crs_bad; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_10__ {int Length; scalar_t__ Pointer; } ;
struct TYPE_9__ {int Type; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_RESOURCE ;
typedef  TYPE_2__ ACPI_BUFFER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int ACPI_RESOURCE_TYPE_END_TAG ; 
#define  ACPI_RESOURCE_TYPE_EXTENDED_IRQ 129 
#define  ACPI_RESOURCE_TYPE_IRQ 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct acpi_pci_link_softc*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (struct acpi_pci_link_softc*,TYPE_2__*) ; 
 struct acpi_pci_link_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_link ; 
 int /*<<< orphan*/ * pci_link_interrupt_weights ; 

__attribute__((used)) static ACPI_STATUS
FUNC14(device_t dev)
{
	struct acpi_pci_link_softc *sc;
	ACPI_RESOURCE *resource, *end;
	ACPI_BUFFER srsbuf;
	ACPI_STATUS status;
	struct link *link;
	int i;

	FUNC2(pci_link);
	sc = FUNC12(dev);
	if (sc->pl_crs_bad)
		status = FUNC11(sc, &srsbuf);
	else
		status = FUNC10(sc, &srsbuf);

	/* Write out new resources via _SRS. */
	status = FUNC5(FUNC9(dev), &srsbuf);
	if (FUNC0(status)) {
		FUNC13(dev, "Unable to route IRQs: %s\n",
		    FUNC3(status));
		FUNC4(srsbuf.Pointer);
		return (status);
	}

	/*
	 * Perform acpi_config_intr() on each IRQ resource if it was just
	 * routed for the first time.
	 */
	link = sc->pl_links;
	i = 0;
	resource = (ACPI_RESOURCE *)srsbuf.Pointer;
	end = (ACPI_RESOURCE *)((char *)srsbuf.Pointer + srsbuf.Length);
	for (;;) {
		if (resource->Type == ACPI_RESOURCE_TYPE_END_TAG)
			break;
		switch (resource->Type) {
		case ACPI_RESOURCE_TYPE_IRQ:
		case ACPI_RESOURCE_TYPE_EXTENDED_IRQ:
			FUNC6(i < sc->pl_num_links);

			/*
			 * Only configure the interrupt and update the
			 * weights if this link has a valid IRQ and was
			 * previously unrouted.
			 */
			if (!link->l_routed &&
			    FUNC7(link->l_irq)) {
				link->l_routed = TRUE;
				FUNC8(dev, resource);
				pci_link_interrupt_weights[link->l_irq] +=
				    link->l_references;
			}
			link++;
			i++;
			break;
		}
		resource = FUNC1(resource);
		if (resource >= end)
			break;
	}
	FUNC4(srsbuf.Pointer);
	return (AE_OK);
}
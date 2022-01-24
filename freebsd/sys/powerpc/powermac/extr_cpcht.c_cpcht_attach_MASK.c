#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_4__ {int /*<<< orphan*/  sc_io_rman; int /*<<< orphan*/  sc_quirks; } ;
struct cpcht_softc {TYPE_2__* htirq_map; int /*<<< orphan*/  htirq_mtx; TYPE_1__ pci_sc; scalar_t__ sc_data; scalar_t__ sc_populated_slots; } ;
typedef  int /*<<< orphan*/  reg ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_5__ {int /*<<< orphan*/  irq_type; } ;

/* Variables and functions */
 scalar_t__ CPCHT_IOPORT_SIZE ; 
 int ENXIO ; 
 int /*<<< orphan*/  IRQ_INTERNAL ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OFW_PCI_QUIRK_RANGES_ON_CHILDREN ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* cpcht_irqmap ; 
 struct cpcht_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC12(device_t dev)
{
	struct		cpcht_softc *sc;
	phandle_t	node, child;
	u_int32_t	reg[3];
	int		i;

	node = FUNC8(dev);
	sc = FUNC6(dev);

	if (FUNC1(node, "reg", reg, sizeof(reg)) < 12)
		return (ENXIO);

	if (FUNC2(node, "ranges") <= 0)
		sc->pci_sc.sc_quirks = OFW_PCI_QUIRK_RANGES_ON_CHILDREN;
	sc->sc_populated_slots = 0;
	sc->sc_data = (vm_offset_t)FUNC10(reg[1], reg[2]);

	/*
	 * Set up the resource manager and the HT->MPIC mapping. For cpcht,
	 * the ranges are properties of the child bridges, and this is also
	 * where we get the HT interrupts properties.
	 */

#if 0
	/* I/O port mappings are usually not in the device tree */
	rman_manage_region(&sc->pci_sc.sc_io_rman, 0, CPCHT_IOPORT_SIZE - 1);
#endif

	FUNC4(sc->htirq_map, sizeof(sc->htirq_map));
	FUNC7(&sc->htirq_mtx, "cpcht irq", NULL, MTX_DEF);
	for (i = 0; i < 8; i++)
		sc->htirq_map[i].irq_type = IRQ_INTERNAL;
	for (child = FUNC0(node); child != 0; child = FUNC3(child))
		FUNC5(dev, child);

	/* Now make the mapping table available to the MPIC */
	cpcht_irqmap = sc->htirq_map;

	return (FUNC9(dev));
}
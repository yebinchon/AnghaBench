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
typedef  int u_int ;
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct mtk_pci_softc {struct rman sc_mem_rman; struct rman sc_io_rman; struct rman sc_irq_rman; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
#define  PCI_RES_BUS 131 
 int RF_ACTIVE ; 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 struct mtk_pci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 struct resource* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*) ; 
 struct resource* FUNC4 (struct rman*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resource*,int) ; 

__attribute__((used)) static struct resource *
FUNC6(device_t bus, device_t child, int type, int *rid,
	rman_res_t start, rman_res_t end, rman_res_t count, u_int flags)
{
	struct mtk_pci_softc *sc = FUNC1(bus);
	struct resource *rv;
	struct rman *rm;

	switch (type) {
	case PCI_RES_BUS:
		return FUNC2(0, child, rid, start, end, count,
					    flags);
	case SYS_RES_IRQ:
		rm = &sc->sc_irq_rman;
		break;
	case SYS_RES_IOPORT:
		rm = &sc->sc_io_rman;
		break;
	case SYS_RES_MEMORY:
		rm = &sc->sc_mem_rman;
		break;
	default:
		return (NULL);
	}

	rv = FUNC4(rm, start, end, count, flags, child);

	if (rv == NULL)
		return (NULL);

	FUNC5(rv, *rid);

	if ((flags & RF_ACTIVE) && type != SYS_RES_IRQ) {
		if (FUNC0(child, type, *rid, rv)) {
			FUNC3(rv);
			return (NULL);
		}
	}

	return (rv);
}
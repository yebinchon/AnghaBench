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
struct rman {int dummy; } ;
struct resource {int dummy; } ;
struct ofw_pci_softc {struct rman sc_pci_io_rman; struct rman sc_pci_mem_rman; } ;
typedef  int /*<<< orphan*/  rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
#define  SYS_RES_IOPORT 130 
#define  SYS_RES_IRQ 129 
#define  SYS_RES_MEMORY 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ofw_pci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct resource*,struct rman*) ; 

int
FUNC4(device_t bus, device_t child, int type,
    struct resource *r, rman_res_t start, rman_res_t end)
{
	struct ofw_pci_softc *sc;
	struct rman *rm;

	sc = FUNC1(bus);
	switch (type) {
	case SYS_RES_IRQ:
		return (FUNC0(bus, child, type, r,
		    start, end));
	case SYS_RES_MEMORY:
		rm = &sc->sc_pci_mem_rman;
		break;
	case SYS_RES_IOPORT:
		rm = &sc->sc_pci_io_rman;
		break;
	default:
		return (EINVAL);
	}
	if (FUNC3(r, rm) == 0)
		return (EINVAL);
	return (FUNC2(r, start, end));
}
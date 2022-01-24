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
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct vmctx {int dummy; } ;
struct pci_xhci_softc {scalar_t__ dboff; scalar_t__ rtsoff; scalar_t__ regsend; int /*<<< orphan*/  mtx; } ;
struct pci_devinst {struct pci_xhci_softc* pi_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ XHCI_CAPLEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct pci_xhci_softc*,scalar_t__) ; 
 int FUNC3 (struct pci_xhci_softc*,scalar_t__) ; 
 int FUNC4 (struct pci_xhci_softc*,scalar_t__) ; 
 int FUNC5 (struct pci_xhci_softc*,scalar_t__) ; 
 int FUNC6 (struct pci_xhci_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint64_t
FUNC9(struct vmctx *ctx, int vcpu, struct pci_devinst *pi, int baridx,
    uint64_t offset, int size)
{
	struct pci_xhci_softc *sc;
	uint32_t	value;

	sc = pi->pi_arg;

	FUNC1(baridx == 0);

	FUNC7(&sc->mtx);
	if (offset < XHCI_CAPLEN)
		value = FUNC3(sc, offset);
	else if (offset < sc->dboff)
		value = FUNC4(sc, offset);
	else if (offset < sc->rtsoff)
		value = FUNC2(sc, offset);
	else if (offset < sc->regsend)
		value = FUNC5(sc, offset);
	else if (offset < (sc->regsend + 4*32))
		value = FUNC6(sc, offset);
	else {
		value = 0;
		FUNC0(("pci_xhci: read invalid offset %ld\r\n", offset));
	}

	FUNC8(&sc->mtx);

	switch (size) {
	case 1:
		value &= 0xFF;
		break;
	case 2:
		value &= 0xFFFF;
		break;
	case 4:
		value &= 0xFFFFFFFF;
		break;
	}

	return (value);
}
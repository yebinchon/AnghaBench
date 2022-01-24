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
struct vmctx {int dummy; } ;
struct pci_xhci_softc {scalar_t__ dboff; scalar_t__ rtsoff; scalar_t__ regsend; int /*<<< orphan*/  mtx; } ;
struct pci_devinst {struct pci_xhci_softc* pi_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ XHCI_CAPLEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_xhci_softc*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_xhci_softc*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_xhci_softc*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct vmctx *ctx, int vcpu, struct pci_devinst *pi,
                int baridx, uint64_t offset, int size, uint64_t value)
{
	struct pci_xhci_softc *sc;

	sc = pi->pi_arg;

	FUNC1(baridx == 0);


	FUNC5(&sc->mtx);
	if (offset < XHCI_CAPLEN)	/* read only registers */
		FUNC0(("pci_xhci: write RO-CAPs offset %ld\r\n", offset));
	else if (offset < sc->dboff)
		FUNC3(sc, offset, value);
	else if (offset < sc->rtsoff)
		FUNC2(sc, offset, value);
	else if (offset < sc->regsend)
		FUNC4(sc, offset, value);
	else
		FUNC0(("pci_xhci: write invalid offset %ld\r\n", offset));

	FUNC6(&sc->mtx);
}
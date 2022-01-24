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
struct vmctx {int dummy; } ;
struct pcisel {int dummy; } ;
struct pci_devinst {struct passthru_softc* pi_arg; } ;
struct TYPE_3__ {int pc_bus; int pc_dev; int pc_func; } ;
struct passthru_softc {TYPE_1__ psc_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 scalar_t__ FUNC1 (struct vmctx*,struct passthru_softc*) ; 
 scalar_t__ FUNC2 (struct passthru_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int) ; 

__attribute__((used)) static int
FUNC6(struct vmctx *ctx, struct pci_devinst *pi, int bus, int slot, int func)
{
	int error;
	struct passthru_softc *sc;

	error = 1;
	sc = pi->pi_arg;

	FUNC0(&sc->psc_sel, sizeof(struct pcisel));
	sc->psc_sel.pc_bus = bus;
	sc->psc_sel.pc_dev = slot;
	sc->psc_sel.pc_func = func;

	if (FUNC2(sc) != 0) {
		FUNC5("failed to initialize MSI for PCI %d/%d/%d",
		    bus, slot, func);
		goto done;
	}

	if (FUNC1(ctx, sc) != 0) {
		FUNC5("failed to initialize BARs for PCI %d/%d/%d",
		    bus, slot, func);
		goto done;
	}

	FUNC3(pi, PCIR_COMMAND, FUNC4(&sc->psc_sel,
	    PCIR_COMMAND, 2));

	error = 0;				/* success */
done:
	return (error);
}
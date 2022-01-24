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
struct vmctx {int dummy; } ;
struct uart_softc {int dummy; } ;
struct pci_devinst {int pi_slot; int pi_func; struct uart_softc* pi_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  COM_DEV ; 
 int /*<<< orphan*/  COM_VENDOR ; 
 int /*<<< orphan*/  PCIBAR_IO ; 
 int /*<<< orphan*/  PCIC_SIMPLECOMM ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  UART_IO_BAR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_uart_intr_assert ; 
 int /*<<< orphan*/  pci_uart_intr_deassert ; 
 int /*<<< orphan*/  stderr ; 
 struct uart_softc* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pci_devinst*) ; 
 scalar_t__ FUNC6 (struct uart_softc*,char*) ; 

__attribute__((used)) static int
FUNC7(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
	struct uart_softc *sc;

	FUNC1(pi, 0, PCIBAR_IO, UART_IO_BAR_SIZE);
	FUNC2(pi);

	/* initialize config space */
	FUNC3(pi, PCIR_DEVICE, COM_DEV);
	FUNC3(pi, PCIR_VENDOR, COM_VENDOR);
	FUNC4(pi, PCIR_CLASS, PCIC_SIMPLECOMM);

	sc = FUNC5(pci_uart_intr_assert, pci_uart_intr_deassert, pi);
	pi->pi_arg = sc;

	if (FUNC6(sc, opts) != 0) {
		FUNC0(stderr, "Unable to initialize backend '%s' for "
		    "pci uart at %d:%d\n", opts, pi->pi_slot, pi->pi_func);
		return (-1);
	}

	return (0);
}
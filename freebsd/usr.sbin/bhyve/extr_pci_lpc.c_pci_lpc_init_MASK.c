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
struct pci_devinst {scalar_t__ pi_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPC_DEV ; 
 int /*<<< orphan*/  LPC_VENDOR ; 
 int /*<<< orphan*/  PCIC_BRIDGE ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_SUBCLASS ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  PCIS_BRIDGE_ISA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct pci_devinst* lpc_bridge ; 
 scalar_t__ FUNC1 (struct vmctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC4(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{

	/*
	 * Do not allow more than one LPC bridge to be configured.
	 */
	if (lpc_bridge != NULL) {
		FUNC0(stderr, "Only one LPC bridge is allowed.\n");
		return (-1);
	}

	/*
	 * Enforce that the LPC can only be configured on bus 0. This
	 * simplifies the ACPI DSDT because it can provide a decode for
	 * all legacy i/o ports behind bus 0.
	 */
	if (pi->pi_bus != 0) {
		FUNC0(stderr, "LPC bridge can be present only on bus 0.\n");
		return (-1);
	}

	if (FUNC1(ctx) != 0)
		return (-1);

	/* initialize config space */
	FUNC2(pi, PCIR_DEVICE, LPC_DEV);
	FUNC2(pi, PCIR_VENDOR, LPC_VENDOR);
	FUNC3(pi, PCIR_CLASS, PCIC_BRIDGE);
	FUNC3(pi, PCIR_SUBCLASS, PCIS_BRIDGE_ISA);

	lpc_bridge = pi;

	return (0);
}
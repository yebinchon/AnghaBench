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
struct pci_emul_dsoftc {int dummy; } ;
struct pci_devinst {struct pci_emul_dsoftc* pi_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIOSZ ; 
 int /*<<< orphan*/  DMEMSZ ; 
 int /*<<< orphan*/  PCIBAR_IO ; 
 int /*<<< orphan*/  PCIBAR_MEM32 ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  PCI_EMUL_MSI_MSGS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct pci_emul_dsoftc* FUNC1 (int,int) ; 
 int FUNC2 (struct pci_devinst*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pci_devinst*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct vmctx *ctx, struct pci_devinst *pi, char *opts)
{
	int error;
	struct pci_emul_dsoftc *sc;

	sc = FUNC1(1, sizeof(struct pci_emul_dsoftc));

	pi->pi_arg = sc;

	FUNC4(pi, PCIR_DEVICE, 0x0001);
	FUNC4(pi, PCIR_VENDOR, 0x10DD);
	FUNC5(pi, PCIR_CLASS, 0x02);

	error = FUNC2(pi, PCI_EMUL_MSI_MSGS);
	FUNC0(error == 0);

	error = FUNC3(pi, 0, PCIBAR_IO, DIOSZ);
	FUNC0(error == 0);

	error = FUNC3(pi, 1, PCIBAR_MEM32, DMEMSZ);
	FUNC0(error == 0);

	error = FUNC3(pi, 2, PCIBAR_MEM32, DMEMSZ);
	FUNC0(error == 0);

	return (0);
}
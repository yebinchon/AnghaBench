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
typedef  int /*<<< orphan*/  uint64_t ;
struct vmctx {int dummy; } ;
struct pci_nvme_softc {int dummy; } ;
struct pci_devinst {struct pci_nvme_softc* pi_arg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pci_devinst*) ; 
 int FUNC3 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_nvme_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint64_t
FUNC5(struct vmctx *ctx, int vcpu, struct pci_devinst *pi, int baridx,
    uint64_t offset, int size)
{
	struct pci_nvme_softc* sc = pi->pi_arg;

	if (baridx == FUNC3(pi) ||
	    baridx == FUNC2(pi)) {
		FUNC0(("nvme-read bar: %d, msix: regoff 0x%lx, size %d\r\n",
		        baridx, offset, size));

		return FUNC1(pi, offset, size);
	}

	switch (baridx) {
	case 0:
       		return FUNC4(sc, offset, size);

	default:
		FUNC0(("unknown bar %d, 0x%lx\r\n", baridx, offset));
	}

	return (0);
}
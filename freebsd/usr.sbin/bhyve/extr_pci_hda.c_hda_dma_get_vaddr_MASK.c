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
struct pci_devinst {int /*<<< orphan*/  pi_vmctx; } ;
struct hda_softc {struct pci_devinst* pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pci_devinst*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,uintptr_t,size_t) ; 

__attribute__((used)) static void *
FUNC2(struct hda_softc *sc, uint64_t dma_paddr, size_t len)
{
	struct pci_devinst *pi = sc->pci_dev;

	FUNC0(pi);

	return (FUNC1(pi->pi_vmctx, (uintptr_t)dma_paddr, len));
}
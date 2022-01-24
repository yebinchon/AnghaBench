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
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct xdma_iommu {int /*<<< orphan*/  p; } ;
struct beri_iommu_softc {int dummy; } ;
typedef  int pt_entry_t ;
typedef  int /*<<< orphan*/ * pmap_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PTE_C_MASK ; 
 int /*<<< orphan*/  PTE_V ; 
 int /*<<< orphan*/  VM_MEMATTR_UNCACHEABLE ; 
 int /*<<< orphan*/  FUNC1 (struct beri_iommu_softc*,int /*<<< orphan*/ ) ; 
 struct beri_iommu_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev, struct xdma_iommu *xio, vm_offset_t va,
    vm_paddr_t pa)
{
	struct beri_iommu_softc *sc;
	pt_entry_t opte, npte;
	pt_entry_t *pte;
	pmap_t p;

	sc = FUNC2(dev);
	p = &xio->p;

	pte = FUNC5(p, va);
	if (pte == NULL)
		FUNC4("pte is NULL\n");

	/* Make pte uncacheable. */
	opte = *pte;
	npte = opte & ~PTE_C_MASK;
	npte |= FUNC0(VM_MEMATTR_UNCACHEABLE);
	*pte = npte;

	/* Write back, invalidate pte. */
	FUNC3((vm_offset_t)pte, sizeof(vm_offset_t));

	/* Invalidate the entry. */
	if (FUNC6(&opte, PTE_V) && opte != npte)
		FUNC1(sc, va);

	return (0);
}
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
struct AdapterControlBlock {int msix_vectors; int* irq_id; int /*<<< orphan*/  pci_dev; int /*<<< orphan*/  acb_flags; int /*<<< orphan*/ * ih; int /*<<< orphan*/ ** irqres; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACB_F_MSIX_ENABLED ; 
 int FALSE ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_CAM ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int TRUE ; 
 int /*<<< orphan*/  arcmsr_intr_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct AdapterControlBlock*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct AdapterControlBlock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct AdapterControlBlock *acb)
{
	int i;

	for (i = 0; i < acb->msix_vectors; i++) {
		acb->irq_id[i] = 1 + i;
		acb->irqres[i] = FUNC1(acb->pci_dev,
		    SYS_RES_IRQ, &acb->irq_id[i], RF_ACTIVE);
		if (acb->irqres[i] == NULL) {
			FUNC3("arcmsr: Can't allocate MSI-X resource\n");
			goto irq_alloc_failed;
		}
		if (FUNC2(acb->pci_dev, acb->irqres[i],
		    INTR_MPSAFE | INTR_TYPE_CAM, NULL, arcmsr_intr_handler,
		    acb, &acb->ih[i])) {
			FUNC3("arcmsr: Cannot set up MSI-X interrupt handler\n");
			goto irq_alloc_failed;
		}
	}
	FUNC3("arcmsr: MSI-X INT enabled\n");
	acb->acb_flags |= ACB_F_MSIX_ENABLED;
	return TRUE;

irq_alloc_failed:
	FUNC0(acb->pci_dev, acb);
	return FALSE;
}
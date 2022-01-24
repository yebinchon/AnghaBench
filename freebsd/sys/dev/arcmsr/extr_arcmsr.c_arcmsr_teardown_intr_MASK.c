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
struct AdapterControlBlock {int acb_flags; int msix_vectors; int /*<<< orphan*/ ** ih; int /*<<< orphan*/ ** irqres; int /*<<< orphan*/ * irq_id; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ACB_F_MSIX_ENABLED ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(device_t dev, struct AdapterControlBlock *acb)
{
	int i;

	if (acb->acb_flags & ACB_F_MSIX_ENABLED) {
		for (i = 0; i < acb->msix_vectors; i++) {
			if (acb->ih[i])
				FUNC1(dev, acb->irqres[i], acb->ih[i]);
			if (acb->irqres[i] != NULL)
				FUNC0(dev, SYS_RES_IRQ,
				    acb->irq_id[i], acb->irqres[i]);

			acb->ih[i] = NULL;
		}
		FUNC2(dev);
	} else {
		if (acb->ih[0])
			FUNC1(dev, acb->irqres[0], acb->ih[0]);
		if (acb->irqres[0] != NULL)
			FUNC0(dev, SYS_RES_IRQ,
			    acb->irq_id[0], acb->irqres[0]);
		acb->ih[0] = NULL;
	}

}
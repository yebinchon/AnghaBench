#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct nicvf {int num_vec; TYPE_1__* msix_entries; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct resource* irq_res; int /*<<< orphan*/ * handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct resource*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 

__attribute__((used)) static void
FUNC5(struct nicvf *nic)
{
	struct resource *res;
	int irq;
	int err;

	/* Free registered interrupts */
	for (irq = 0; irq < nic->num_vec; irq++) {
		res = nic->msix_entries[irq].irq_res;
		if (res == NULL)
			continue;
		/* Teardown interrupt first */
		if (nic->msix_entries[irq].handle != NULL) {
			err = FUNC2(nic->dev,
			    nic->msix_entries[irq].irq_res,
			    nic->msix_entries[irq].handle);
			FUNC0(err == 0,
			    ("ERROR: Unable to teardown interrupt %d", irq));
			nic->msix_entries[irq].handle = NULL;
		}

		FUNC1(nic->dev, SYS_RES_IRQ,
			    FUNC4(res), nic->msix_entries[irq].irq_res);
		nic->msix_entries[irq].irq_res = NULL;
	}
	/* Disable MSI-X */
	FUNC3(nic);
}
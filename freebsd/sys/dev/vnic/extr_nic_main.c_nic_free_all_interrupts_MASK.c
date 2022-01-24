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
struct nicpf {int num_vec; TYPE_1__* msix_entries; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * irq_res; int /*<<< orphan*/ * handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct nicpf *nic)
{
	int irq;

	for (irq = 0; irq < nic->num_vec; irq++) {
		if (nic->msix_entries[irq].irq_res == NULL)
			continue;
		if (nic->msix_entries[irq].handle != NULL) {
			FUNC1(nic->dev,
			    nic->msix_entries[irq].irq_res,
			    nic->msix_entries[irq].handle);
		}

		FUNC0(nic->dev, SYS_RES_IRQ, irq + 1,
		    nic->msix_entries[irq].irq_res);
	}
}
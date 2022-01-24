#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qlnxr_dev {int num_cnq; TYPE_1__* cnq_array; TYPE_2__* ha; } ;
struct TYPE_5__ {int /*<<< orphan*/  pci_dev; } ;
typedef  TYPE_2__ qlnx_host_t ;
struct TYPE_4__ {scalar_t__ irq; int /*<<< orphan*/  irq_rid; scalar_t__ irq_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC3(struct qlnxr_dev *dev)
{
	int i;
	qlnx_host_t *ha;

	ha = dev->ha;

	FUNC0(ha, "enter\n");

        for (i = 0; i < dev->num_cnq; i++) {
                if (dev->cnq_array[i].irq_handle)
                        (void)FUNC2(dev->ha->pci_dev,
				dev->cnq_array[i].irq,
                                dev->cnq_array[i].irq_handle);

                if (dev->cnq_array[i].irq)
                        (void) FUNC1(dev->ha->pci_dev,
				SYS_RES_IRQ,
                                dev->cnq_array[i].irq_rid,
				dev->cnq_array[i].irq);
	}
	FUNC0(ha, "exit\n");
	return;
}
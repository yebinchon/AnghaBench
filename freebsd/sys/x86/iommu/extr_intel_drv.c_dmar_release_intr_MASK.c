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
struct dmar_unit {struct dmar_msi_data* intrs; } ;
struct dmar_msi_data {int irq; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/  irq_res; int /*<<< orphan*/  intr_handle; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev, struct dmar_unit *unit, int idx)
{
	struct dmar_msi_data *dmd;

	dmd = &unit->intrs[idx];
	if (dmd->irq == -1)
		return;
	FUNC3(dev, dmd->irq_res, dmd->intr_handle);
	FUNC2(dev, SYS_RES_IRQ, dmd->irq_rid, dmd->irq_res);
	FUNC1(dev, SYS_RES_IRQ, dmd->irq_rid);
	FUNC0(FUNC4(FUNC4(dev)),
	    dev, dmd->irq);
	dmd->irq = -1;
}
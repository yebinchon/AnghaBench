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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct dmar_unit {struct dmar_msi_data* intrs; } ;
struct dmar_msi_data {int irq; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  intr_handle; int /*<<< orphan*/  msi_uaddr_reg; int /*<<< orphan*/  msi_addr_reg; int /*<<< orphan*/  msi_data_reg; int /*<<< orphan*/  name; int /*<<< orphan*/  handler; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  INTR_TYPE_MISC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dmar_unit*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC12 (struct dmar_unit*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC13(device_t dev, struct dmar_unit *unit, int idx)
{
	device_t pcib;
	struct dmar_msi_data *dmd;
	uint64_t msi_addr;
	uint32_t msi_data;
	int error;

	dmd = &unit->intrs[idx];
	pcib = FUNC10(FUNC10(dev)); /* Really not pcib */
	error = FUNC0(pcib, dev, &dmd->irq);
	if (error != 0) {
		FUNC11(dev, "cannot allocate %s interrupt, %d\n",
		    dmd->name, error);
		goto err1;
	}
	error = FUNC7(dev, SYS_RES_IRQ, dmd->irq_rid,
	    dmd->irq, 1);
	if (error != 0) {
		FUNC11(dev, "cannot set %s interrupt resource, %d\n",
		    dmd->name, error);
		goto err2;
	}
	dmd->irq_res = FUNC3(dev, SYS_RES_IRQ,
	    &dmd->irq_rid, RF_ACTIVE);
	if (dmd->irq_res == NULL) {
		FUNC11(dev,
		    "cannot allocate resource for %s interrupt\n", dmd->name);
		error = ENXIO;
		goto err3;
	}
	error = FUNC8(dev, dmd->irq_res, INTR_TYPE_MISC,
	    dmd->handler, NULL, unit, &dmd->intr_handle);
	if (error != 0) {
		FUNC11(dev, "cannot setup %s interrupt, %d\n",
		    dmd->name, error);
		goto err4;
	}
	FUNC5(dev, dmd->irq_res, dmd->intr_handle, "%s", dmd->name);
	error = FUNC1(pcib, dev, dmd->irq, &msi_addr, &msi_data);
	if (error != 0) {
		FUNC11(dev, "cannot map %s interrupt, %d\n",
		    dmd->name, error);
		goto err5;
	}
	FUNC12(unit, dmd->msi_data_reg, msi_data);
	FUNC12(unit, dmd->msi_addr_reg, msi_addr);
	/* Only for xAPIC mode */
	FUNC12(unit, dmd->msi_uaddr_reg, msi_addr >> 32);
	return (0);

err5:
	FUNC9(dev, dmd->irq_res, dmd->intr_handle);
err4:
	FUNC6(dev, SYS_RES_IRQ, dmd->irq_rid, dmd->irq_res);
err3:
	FUNC4(dev, SYS_RES_IRQ, dmd->irq_rid);
err2:
	FUNC2(pcib, dev, dmd->irq);
	dmd->irq = -1;
err1:
	return (error);
}
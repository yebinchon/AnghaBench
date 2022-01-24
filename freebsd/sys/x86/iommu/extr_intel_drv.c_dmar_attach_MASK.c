#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct dmar_unit {int hw_cap; int hw_ecap; int /*<<< orphan*/  ctx_obj; int /*<<< orphan*/  domids; int /*<<< orphan*/  domains; int /*<<< orphan*/  lock; TYPE_1__* intrs; int /*<<< orphan*/  hw_ver; int /*<<< orphan*/ * regs; int /*<<< orphan*/  reg_rid; int /*<<< orphan*/  base; int /*<<< orphan*/  segment; int /*<<< orphan*/  unit; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {int /*<<< orphan*/  Address; int /*<<< orphan*/  Segment; } ;
struct TYPE_5__ {int irq; char* name; int /*<<< orphan*/  disable_intr; int /*<<< orphan*/  enable_intr; int /*<<< orphan*/  msi_uaddr_reg; int /*<<< orphan*/  msi_addr_reg; int /*<<< orphan*/  msi_data_reg; int /*<<< orphan*/  handler; int /*<<< orphan*/  irq_rid; } ;
typedef  TYPE_2__ ACPI_DMAR_HARDWARE_UNIT ;

/* Variables and functions */
 int DMAR_CAP_CM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMAR_CAP_REG ; 
 scalar_t__ DMAR_CTX_CNT ; 
 int DMAR_ECAP_DI ; 
 int /*<<< orphan*/  DMAR_ECAP_REG ; 
 int /*<<< orphan*/  DMAR_FAULT_IRQ_RID ; 
 int /*<<< orphan*/  DMAR_FEADDR_REG ; 
 int /*<<< orphan*/  DMAR_FEDATA_REG ; 
 int /*<<< orphan*/  DMAR_FEUADDR_REG ; 
 scalar_t__ FUNC1 (struct dmar_unit*) ; 
 int /*<<< orphan*/  DMAR_IEADDR_REG ; 
 int /*<<< orphan*/  DMAR_IEDATA_REG ; 
 int /*<<< orphan*/  DMAR_IEUADDR_REG ; 
 size_t DMAR_INTR_FAULT ; 
 size_t DMAR_INTR_QI ; 
 int DMAR_INTR_TOTAL ; 
 int /*<<< orphan*/  FUNC2 (struct dmar_unit*) ; 
 int DMAR_PGF_WAITOK ; 
 int DMAR_PGF_ZERO ; 
 int /*<<< orphan*/  DMAR_QI_IRQ_RID ; 
 int /*<<< orphan*/  DMAR_REG_RID ; 
 int /*<<< orphan*/  FUNC3 (struct dmar_unit*) ; 
 int /*<<< orphan*/  DMAR_VER_REG ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  OBJT_PHYS ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct dmar_unit* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int FUNC12 (int /*<<< orphan*/ ,struct dmar_unit*,size_t) ; 
 int /*<<< orphan*/  dmar_disable_fault_intr ; 
 int /*<<< orphan*/  dmar_disable_qi_intr ; 
 int /*<<< orphan*/  dmar_enable_fault_intr ; 
 int /*<<< orphan*/  dmar_enable_qi_intr ; 
 int FUNC13 (struct dmar_unit*) ; 
 int /*<<< orphan*/  dmar_fault_intr ; 
 TYPE_2__* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (struct dmar_unit*) ; 
 int FUNC17 (struct dmar_unit*) ; 
 int FUNC18 (struct dmar_unit*) ; 
 int FUNC19 (struct dmar_unit*) ; 
 int FUNC20 (struct dmar_unit*) ; 
 int FUNC21 (struct dmar_unit*) ; 
 int FUNC22 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,struct dmar_unit*,TYPE_2__*) ; 
 int /*<<< orphan*/  dmar_qi_intr ; 
 int /*<<< orphan*/  FUNC26 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC27 (struct dmar_unit*,int /*<<< orphan*/ ) ; 
 void* FUNC28 (struct dmar_unit*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC34(device_t dev)
{
	struct dmar_unit *unit;
	ACPI_DMAR_HARDWARE_UNIT *dmaru;
	uint64_t timeout;
	int i, error;

	unit = FUNC9(dev);
	unit->dev = dev;
	unit->unit = FUNC10(dev);
	dmaru = FUNC14(unit->unit);
	if (dmaru == NULL)
		return (EINVAL);
	unit->segment = dmaru->Segment;
	unit->base = dmaru->Address;
	unit->reg_rid = DMAR_REG_RID;
	unit->regs = FUNC8(dev, SYS_RES_MEMORY,
	    &unit->reg_rid, RF_ACTIVE);
	if (unit->regs == NULL) {
		FUNC11(dev, "cannot allocate register window\n");
		return (ENOMEM);
	}
	unit->hw_ver = FUNC27(unit, DMAR_VER_REG);
	unit->hw_cap = FUNC28(unit, DMAR_CAP_REG);
	unit->hw_ecap = FUNC28(unit, DMAR_ECAP_REG);
	if (bootverbose)
		FUNC25(dev, unit, dmaru);
	FUNC26(unit);

	timeout = FUNC15();
	FUNC6("hw.dmar.timeout", &timeout);
	FUNC30(timeout);

	for (i = 0; i < DMAR_INTR_TOTAL; i++)
		unit->intrs[i].irq = -1;

	unit->intrs[DMAR_INTR_FAULT].name = "fault";
	unit->intrs[DMAR_INTR_FAULT].irq_rid = DMAR_FAULT_IRQ_RID;
	unit->intrs[DMAR_INTR_FAULT].handler = dmar_fault_intr;
	unit->intrs[DMAR_INTR_FAULT].msi_data_reg = DMAR_FEDATA_REG;
	unit->intrs[DMAR_INTR_FAULT].msi_addr_reg = DMAR_FEADDR_REG;
	unit->intrs[DMAR_INTR_FAULT].msi_uaddr_reg = DMAR_FEUADDR_REG;
	unit->intrs[DMAR_INTR_FAULT].enable_intr = dmar_enable_fault_intr;
	unit->intrs[DMAR_INTR_FAULT].disable_intr = dmar_disable_fault_intr;
	error = FUNC12(dev, unit, DMAR_INTR_FAULT);
	if (error != 0) {
		FUNC29(dev, unit);
		return (error);
	}
	if (FUNC1(unit)) {
		unit->intrs[DMAR_INTR_QI].name = "qi";
		unit->intrs[DMAR_INTR_QI].irq_rid = DMAR_QI_IRQ_RID;
		unit->intrs[DMAR_INTR_QI].handler = dmar_qi_intr;
		unit->intrs[DMAR_INTR_QI].msi_data_reg = DMAR_IEDATA_REG;
		unit->intrs[DMAR_INTR_QI].msi_addr_reg = DMAR_IEADDR_REG;
		unit->intrs[DMAR_INTR_QI].msi_uaddr_reg = DMAR_IEUADDR_REG;
		unit->intrs[DMAR_INTR_QI].enable_intr = dmar_enable_qi_intr;
		unit->intrs[DMAR_INTR_QI].disable_intr = dmar_disable_qi_intr;
		error = FUNC12(dev, unit, DMAR_INTR_QI);
		if (error != 0) {
			FUNC29(dev, unit);
			return (error);
		}
	}

	FUNC31(&unit->lock, "dmarhw", NULL, MTX_DEF);
	unit->domids = FUNC32(0, FUNC23(FUNC0(unit->hw_cap)),
	    &unit->lock);
	FUNC5(&unit->domains);

	/*
	 * 9.2 "Context Entry":
	 * When Caching Mode (CM) field is reported as Set, the
	 * domain-id value of zero is architecturally reserved.
	 * Software must not use domain-id value of zero
	 * when CM is Set.
	 */
	if ((unit->hw_cap & DMAR_CAP_CM) != 0)
		FUNC7(unit->domids, 0);

	unit->ctx_obj = FUNC33(OBJT_PHYS, NULL, FUNC4(1 +
	    DMAR_CTX_CNT), 0, 0, NULL);

	/*
	 * Allocate and load the root entry table pointer.  Enable the
	 * address translation after the required invalidations are
	 * done.
	 */
	FUNC24(unit->ctx_obj, 0, DMAR_PGF_WAITOK | DMAR_PGF_ZERO);
	FUNC2(unit);
	error = FUNC22(unit);
	if (error != 0) {
		FUNC3(unit);
		FUNC29(dev, unit);
		return (error);
	}
	error = FUNC20(unit);
	if (error != 0) {
		FUNC3(unit);
		FUNC29(dev, unit);
		return (error);
	}
	if ((unit->hw_ecap & DMAR_ECAP_DI) != 0) {
		error = FUNC21(unit);
		if (error != 0) {
			FUNC3(unit);
			FUNC29(dev, unit);
			return (error);
		}
	}

	FUNC3(unit);
	error = FUNC17(unit);
	if (error != 0) {
		FUNC29(dev, unit);
		return (error);
	}
	error = FUNC19(unit);
	if (error != 0) {
		FUNC29(dev, unit);
		return (error);
	}
	error = FUNC18(unit);
	if (error != 0) {
		FUNC29(dev, unit);
		return (error);
	}
	error = FUNC16(unit);
	if (error != 0) {
		FUNC29(dev, unit);
		return (error);
	}

#ifdef NOTYET
	DMAR_LOCK(unit);
	error = dmar_enable_translation(unit);
	if (error != 0) {
		DMAR_UNLOCK(unit);
		dmar_release_resources(dev, unit);
		return (error);
	}
	DMAR_UNLOCK(unit);
#endif

	return (0);
}
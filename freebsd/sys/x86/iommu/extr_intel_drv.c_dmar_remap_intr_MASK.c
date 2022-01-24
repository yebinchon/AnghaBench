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
typedef  scalar_t__ u_int ;
struct dmar_unit {struct dmar_msi_data* intrs; } ;
struct dmar_msi_data {scalar_t__ irq; int /*<<< orphan*/  (* enable_intr ) (struct dmar_unit*) ;int /*<<< orphan*/  msi_uaddr_reg; int /*<<< orphan*/  msi_addr_reg; int /*<<< orphan*/  msi_data_reg; int /*<<< orphan*/  (* disable_intr ) (struct dmar_unit*) ;} ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int DMAR_INTR_TOTAL ; 
 int /*<<< orphan*/  FUNC0 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmar_unit*) ; 
 int ENOENT ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct dmar_unit* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dmar_unit*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*) ; 
 int /*<<< orphan*/  FUNC7 (struct dmar_unit*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, device_t child, u_int irq)
{
	struct dmar_unit *unit;
	struct dmar_msi_data *dmd;
	uint64_t msi_addr;
	uint32_t msi_data;
	int i, error;

	unit = FUNC4(dev);
	for (i = 0; i < DMAR_INTR_TOTAL; i++) {
		dmd = &unit->intrs[i];
		if (irq == dmd->irq) {
			error = FUNC2(FUNC3(
			    FUNC3(dev)),
			    dev, irq, &msi_addr, &msi_data);
			if (error != 0)
				return (error);
			FUNC0(unit);
			(dmd->disable_intr)(unit);
			FUNC5(unit, dmd->msi_data_reg, msi_data);
			FUNC5(unit, dmd->msi_addr_reg, msi_addr);
			FUNC5(unit, dmd->msi_uaddr_reg, msi_addr >> 32);
			(dmd->enable_intr)(unit);
			FUNC1(unit);
			return (0);
		}
	}
	return (ENOENT);
}
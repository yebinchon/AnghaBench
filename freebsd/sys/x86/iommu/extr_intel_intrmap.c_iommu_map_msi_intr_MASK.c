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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u_int ;
struct dmar_unit {int /*<<< orphan*/  ir_enabled; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int DMAR_IRTE1_DLM_FM ; 
 int DMAR_IRTE1_DM_PHYSICAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int DMAR_IRTE1_P ; 
 int DMAR_IRTE1_RH_DIRECT ; 
 int DMAR_IRTE1_TM_EDGE ; 
 int FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct dmar_unit*) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int MSI_INTEL_ADDR_BASE ; 
 struct dmar_unit* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct dmar_unit*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ x2apic_mode ; 

int
FUNC7(device_t src, u_int cpu, u_int vector, u_int cookie,
    uint64_t *addr, uint32_t *data)
{
	struct dmar_unit *unit;
	uint64_t low;
	uint16_t rid;
	int is_dmar;

	unit = FUNC5(src, &rid, &is_dmar);
	if (is_dmar) {
		FUNC4(unit == NULL, ("DMAR cannot translate itself"));

		/*
		 * See VT-d specification, 5.1.6 Remapping Hardware -
		 * Interrupt Programming.
		 */
		*data = vector;
		*addr = MSI_INTEL_ADDR_BASE | ((cpu & 0xff) << 12);
		if (x2apic_mode)
			*addr |= ((uint64_t)cpu & 0xffffff00) << 32;
		else
			FUNC4(cpu <= 0xff, ("cpu id too big %d", cpu));
		return (0);
	}
	if (unit == NULL || !unit->ir_enabled || cookie == -1)
		return (EOPNOTSUPP);

	low = (FUNC3(unit) ? FUNC0(cpu) :
	    FUNC1(cpu)) | FUNC2(vector) |
	    DMAR_IRTE1_DLM_FM | DMAR_IRTE1_TM_EDGE | DMAR_IRTE1_RH_DIRECT |
	    DMAR_IRTE1_DM_PHYSICAL | DMAR_IRTE1_P;
	FUNC6(unit, cookie, low, rid);

	if (addr != NULL) {
		/*
		 * See VT-d specification, 5.1.5.2 MSI and MSI-X
		 * Register Programming.
		 */
		*addr = MSI_INTEL_ADDR_BASE | ((cookie & 0x7fff) << 5) |
		    ((cookie & 0x8000) << 2) | 0x18;
		*data = 0;
	}
	return (0);
}
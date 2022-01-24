#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_long ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ driver_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  KBDC_RID_AUX ; 
 int /*<<< orphan*/  PSMCPNP_DRIVER_NAME ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(driver_t *driver, device_t parent)
{
	device_t psmc;
	device_t psm;
	u_long irq;
	int unit;

	unit = FUNC6(parent);

	/* always add at least one child */
	psm = FUNC0(parent, KBDC_RID_AUX, driver->name, unit);
	if (psm == NULL)
		return;

	irq = FUNC2(psm, SYS_RES_IRQ, KBDC_RID_AUX);
	if (irq > 0)
		return;

	/*
	 * If the PS/2 mouse device has already been reported by ACPI or
	 * PnP BIOS, obtain the IRQ resource from it.
	 * (See psmcpnp_attach() below.)
	 */
	psmc = FUNC4(FUNC5(parent),
	    PSMCPNP_DRIVER_NAME, unit);
	if (psmc == NULL)
		return;
	irq = FUNC2(psmc, SYS_RES_IRQ, 0);
	if (irq <= 0)
		return;
	FUNC1(psmc, SYS_RES_IRQ, 0);
	FUNC3(psm, SYS_RES_IRQ, KBDC_RID_AUX, irq, 1);
}
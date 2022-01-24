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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  addr ;
typedef  int /*<<< orphan*/  ACPI_TABLE_RSDP ;

/* Variables and functions */
 int /*<<< orphan*/  KENV_GET ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  hint_acpi_0_rsdp ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  machdep_acpi_root ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ACPI_TABLE_RSDP *
FUNC6(void)
{
	ACPI_TABLE_RSDP *rsdp;
	char		buf[20];
	u_long		addr;
	size_t		len;

	FUNC2();

	addr = 0;

	/* Attempt to use kenv or sysctl to find RSD PTR record. */
	if (FUNC3(KENV_GET, hint_acpi_0_rsdp, buf, 20) > 0)
		addr = FUNC4(buf, NULL, 0);
	if (addr == 0) {
		len = sizeof(addr);
		if (FUNC5(machdep_acpi_root, &addr, &len, NULL, 0) != 0)
			addr = 0;
	}
	if (addr != 0 && (rsdp = FUNC0(addr)) != NULL)
		return (rsdp);

	return (FUNC1());
}
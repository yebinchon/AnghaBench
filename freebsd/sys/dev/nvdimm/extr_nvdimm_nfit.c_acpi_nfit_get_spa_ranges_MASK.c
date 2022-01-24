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
typedef  int /*<<< orphan*/  ACPI_TABLE_NFIT ;
typedef  int /*<<< orphan*/  ACPI_NFIT_SYSTEM_ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_NFIT_TYPE_SYSTEM_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void***,int*) ; 

void
FUNC1(ACPI_TABLE_NFIT *nfitbl,
    ACPI_NFIT_SYSTEM_ADDRESS ***listp, int *countp)
{

	FUNC0(nfitbl, ACPI_NFIT_TYPE_SYSTEM_ADDRESS, 0, 0, 0,
	    (void ***)listp, countp);
}
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
typedef  scalar_t__ nfit_handle_t ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_TYPE_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  find_dimm ; 

__attribute__((used)) static ACPI_HANDLE
FUNC2(ACPI_HANDLE root_handle, nfit_handle_t adr)
{
	ACPI_HANDLE res;
	ACPI_STATUS status;

	res = NULL;
	status = FUNC1(ACPI_TYPE_DEVICE, root_handle, 1, find_dimm,
	    NULL, (void *)(uintptr_t)adr, &res);
	if (FUNC0(status))
		res = NULL;
	return (res);
}
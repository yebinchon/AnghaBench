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
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_3__ {uintptr_t Address; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;
typedef  TYPE_1__ ACPI_DEVICE_INFO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_CTRL_TERMINATE ; 
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC3(ACPI_HANDLE handle, UINT32 nesting_level, void *context,
    void **return_value)
{
	ACPI_DEVICE_INFO *device_info;
	ACPI_STATUS status;

	status = FUNC1(handle, &device_info);
	if (FUNC0(status))
		FUNC2(AE_ERROR);
	if (device_info->Address == (uintptr_t)context) {
		*(ACPI_HANDLE *)return_value = handle;
		FUNC2(AE_CTRL_TERMINATE);
	}
	FUNC2(AE_OK);
}
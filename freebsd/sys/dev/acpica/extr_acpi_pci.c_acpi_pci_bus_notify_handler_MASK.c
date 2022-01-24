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
typedef  void* device_t ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  ACPI_HANDLE ;

/* Variables and functions */
#define  ACPI_NOTIFY_BUS_CHECK 128 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  FUNC1 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(ACPI_HANDLE h, UINT32 notify, void *context)
{
	device_t dev;

	dev = context;

	switch (notify) {
	case ACPI_NOTIFY_BUS_CHECK:
		FUNC2(&Giant);
		FUNC0(dev);
		FUNC3(&Giant);
		break;
	default:
		FUNC1(dev, "unknown notify %#x\n", notify);
		break;
	}
}
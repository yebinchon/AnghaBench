#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  driver_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_10__ {scalar_t__ DutyWidth; } ;
struct TYPE_9__ {int /*<<< orphan*/ * Pointer; int /*<<< orphan*/  Length; } ;
struct TYPE_7__ {int PblkLength; scalar_t__ PblkAddress; } ;
struct TYPE_8__ {TYPE_1__ Processor; } ;
typedef  TYPE_2__ ACPI_OBJECT ;
typedef  int /*<<< orphan*/ * ACPI_HANDLE ;
typedef  TYPE_3__ ACPI_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_ALLOCATE_BUFFER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ACPI_TYPE_PROCESSOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_5__ AcpiGbl_FADT ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC9(driver_t *driver, device_t parent)
{
	ACPI_BUFFER buf;
	ACPI_HANDLE handle;
	ACPI_OBJECT *obj;

	/* Make sure we're not being doubly invoked. */
	if (FUNC7(parent, "acpi_throttle", -1))
		return;

	/* Check for a valid duty width and parent CPU type. */
	handle = FUNC5(parent);
	if (handle == NULL)
		return;
	if (AcpiGbl_FADT.DutyWidth == 0 ||
	    FUNC6(parent) != ACPI_TYPE_PROCESSOR)
		return;

	/*
	 * Add a child if there's a non-NULL P_BLK and correct length, or
	 * if the _PTC method is present.
	 */
	buf.Pointer = NULL;
	buf.Length = ACPI_ALLOCATE_BUFFER;
	if (FUNC0(FUNC2(handle, NULL, NULL, &buf)))
		return;
	obj = (ACPI_OBJECT *)buf.Pointer;
	if ((obj->Processor.PblkAddress && obj->Processor.PblkLength >= 4) ||
	    FUNC1(FUNC2(handle, "_PTC", NULL, NULL))) {
		if (FUNC4(parent, 0, "acpi_throttle", -1) == NULL)
			FUNC8(parent, "add throttle child failed\n");
	}
	FUNC3(obj);
}
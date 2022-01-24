#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ PstateControl; int /*<<< orphan*/  SmiCommand; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ AcpiGbl_FADT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  acpi ; 

__attribute__((used)) static void
FUNC3(void *arg)
{

	/* Signal to the platform that we are taking over CPU control. */
	if (AcpiGbl_FADT.PstateControl == 0)
		return;
	FUNC0(acpi);
	FUNC2(AcpiGbl_FADT.SmiCommand, AcpiGbl_FADT.PstateControl, 8);
	FUNC1(acpi);
}
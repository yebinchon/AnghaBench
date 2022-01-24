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

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEBUG_DEFAULT ; 
 int /*<<< orphan*/  AcpiDbgLevel ; 
 int /*<<< orphan*/  AcpiGbl_EnableInterpreterSlack ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(int argc, char *argv[])
{
	char	*progname;

	progname = argv[0];

	if (argc == 1) {
		FUNC3(progname);
	}

	AcpiDbgLevel = ACPI_DEBUG_DEFAULT;

	/*
	 * Match kernel options for the interpreter.  Global variable names
	 * can be found in acglobal.h.
	 */
	AcpiGbl_EnableInterpreterSlack = TRUE;

	FUNC1("region.ini");
	if (FUNC2(argv[1]) == 0) {
		FUNC0("region.dmp");
	}

	return (0);
}
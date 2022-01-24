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
 int /*<<< orphan*/  IO_RTC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5(void)
{

	FUNC3("");
	FUNC3("Device (RTC)");
	FUNC3("{");
	FUNC3("  Name (_HID, EisaId (\"PNP0B00\"))");
	FUNC3("  Name (_CRS, ResourceTemplate ()");
	FUNC3("  {");
	FUNC2(2);
	FUNC0(IO_RTC, 2);
	FUNC1(8);
	FUNC4(2);
	FUNC3("  })");
	FUNC3("}");
}
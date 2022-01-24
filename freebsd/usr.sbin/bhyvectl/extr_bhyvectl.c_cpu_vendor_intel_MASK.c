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
typedef  int /*<<< orphan*/  u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (char*,char*) ; 

__attribute__((used)) static bool
FUNC4(void)
{
	u_int regs[4];
	char cpu_vendor[13];

	FUNC0(0, regs);
	((u_int *)&cpu_vendor)[0] = regs[1];
	((u_int *)&cpu_vendor)[1] = regs[3];
	((u_int *)&cpu_vendor)[2] = regs[2];
	cpu_vendor[12] = '\0';

	if (FUNC3(cpu_vendor, "AuthenticAMD") == 0) {
		return (false);
	} else if (FUNC3(cpu_vendor, "GenuineIntel") == 0) {
		return (true);
	} else {
		FUNC2(stderr, "Unknown cpu vendor \"%s\"\n", cpu_vendor);
		FUNC1(1);
	}
}
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
 int /*<<< orphan*/  ac_acpi_devd ; 
 int /*<<< orphan*/  ac_apm ; 
 int /*<<< orphan*/  ac_sysctl ; 
 int /*<<< orphan*/  acline_mode_user ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  optarg ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2(char *arg, int ch)
{
	if (FUNC1(arg, "sysctl") == 0)
		acline_mode_user = ac_sysctl;
	else if (FUNC1(arg, "devd") == 0)
		acline_mode_user = ac_acpi_devd;
#ifdef USE_APM
	else if (strcmp(arg, "apm") == 0)
		acline_mode_user = ac_apm;
#endif
	else
		FUNC0(1, "bad option: -%c %s", (char)ch, optarg);
}
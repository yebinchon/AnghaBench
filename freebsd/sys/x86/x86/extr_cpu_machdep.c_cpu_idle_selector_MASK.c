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
struct TYPE_3__ {int id_cpuid2_flag; char* id_name; int /*<<< orphan*/  id_fn; } ;

/* Variables and functions */
 scalar_t__ bootverbose ; 
 int cpu_feature2 ; 
 int /*<<< orphan*/  cpu_idle_fn ; 
 int /*<<< orphan*/ * cpu_idle_hook ; 
 TYPE_1__* idle_tbl ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

__attribute__((used)) static bool
FUNC3(const char *new_idle_name)
{
	int i;

	for (i = 0; i < FUNC0(idle_tbl); i++) {
		if (idle_tbl[i].id_cpuid2_flag != 0 &&
		    (cpu_feature2 & idle_tbl[i].id_cpuid2_flag) == 0)
			continue;
		if (FUNC2(idle_tbl[i].id_name, "acpi") == 0 &&
		    cpu_idle_hook == NULL)
			continue;
		if (FUNC2(idle_tbl[i].id_name, new_idle_name))
			continue;
		cpu_idle_fn = idle_tbl[i].id_fn;
		if (bootverbose)
			FUNC1("CPU idle set to %s\n", idle_tbl[i].id_name);
		return (true);
	}
	return (false);
}
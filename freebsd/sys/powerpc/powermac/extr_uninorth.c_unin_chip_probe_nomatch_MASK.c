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
struct resource_list {int dummy; } ;
struct unin_chip_devinfo {struct resource_list udi_resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 struct unin_chip_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct resource_list*,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(device_t dev, device_t child)
{
        struct unin_chip_devinfo *dinfo;
        struct resource_list *rl;
	const char *type;

	if (bootverbose) {
		dinfo = FUNC0(child);
		rl = &dinfo->udi_resources;

		if ((type = FUNC3(child)) == NULL)
			type = "(unknown)";
		FUNC1(dev, "<%s, %s>", type, FUNC2(child));
		FUNC5(rl, "mem", SYS_RES_MEMORY, "%#jx");
		FUNC5(rl, "irq", SYS_RES_IRQ, "%jd");
		FUNC4(" (no driver attached)\n");
	}
}
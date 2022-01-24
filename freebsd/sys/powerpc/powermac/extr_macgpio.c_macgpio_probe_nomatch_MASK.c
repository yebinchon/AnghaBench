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
struct macgpio_devinfo {scalar_t__ gpio_num; int /*<<< orphan*/  mdi_resources; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ bootverbose ; 
 struct macgpio_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC6(device_t dev, device_t child)
{
        struct macgpio_devinfo *dinfo;
	const char *type;

	if (bootverbose) {
		dinfo = FUNC0(child);

		if ((type = FUNC3(child)) == NULL)
			type = "(unknown)";
		FUNC1(dev, "<%s, %s>", type, FUNC2(child));
		if (dinfo->gpio_num >= 0)
			FUNC4(" gpio %d",dinfo->gpio_num);
		FUNC5(&dinfo->mdi_resources, "irq", 
		    SYS_RES_IRQ, "%jd");
		FUNC4(" (no driver attached)\n");
	}
}
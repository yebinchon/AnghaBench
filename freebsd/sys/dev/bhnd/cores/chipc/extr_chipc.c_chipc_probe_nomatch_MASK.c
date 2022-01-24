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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct resource_list* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct resource_list*,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(device_t dev, device_t child)
{
	struct resource_list	*rl;
	const char		*name;

	name = FUNC1(child);
	if (name == NULL)
		name = "unknown device";

	FUNC2(dev, "<%s> at", name);

	rl = FUNC0(dev, child);
	if (rl != NULL) {
		FUNC4(rl, "mem", SYS_RES_MEMORY, "%#jx");
		FUNC4(rl, "irq", SYS_RES_IRQ, "%jd");
	}

	FUNC3(" (no driver attached)\n");
}
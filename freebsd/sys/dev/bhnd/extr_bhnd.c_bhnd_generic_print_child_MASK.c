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
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,int) ; 
 scalar_t__ FUNC6 (struct resource_list*,char*,int /*<<< orphan*/ ,char*) ; 

int
FUNC7(device_t dev, device_t child)
{
	struct resource_list	*rl;
	int			retval = 0;

	retval += FUNC4(dev, child);

	rl = FUNC0(dev, child);
	
	
	if (rl != NULL) {
		retval += FUNC6(rl, "mem", SYS_RES_MEMORY,
		    "%#jx");

		retval += FUNC6(rl, "irq", SYS_RES_IRQ,
		    "%#jd");
	}

	retval += FUNC5(" at core %u", FUNC1(child));

	retval += FUNC2(dev, child);
	retval += FUNC3(dev, child);

	return (retval);
}
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
struct iicbus_ivar {int addr; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 struct iicbus_ivar* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char const*,int,char*,int*) ; 

__attribute__((used)) static void
FUNC5(device_t bus, const char *dname, int dunit)
{
	device_t child;
	int irq;
	struct iicbus_ivar *devi;

	child = FUNC0(bus, 0, dname, dunit);
	devi = FUNC1(child);
	FUNC4(dname, dunit, "addr", &devi->addr);
	if (FUNC4(dname, dunit, "irq", &irq) == 0) {
		if (FUNC2(child, SYS_RES_IRQ, 0, irq, 1) != 0)
			FUNC3(bus,
			    "warning: bus_set_resource() failed\n");
	}
}
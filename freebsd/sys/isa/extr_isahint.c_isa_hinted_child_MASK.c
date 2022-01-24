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
typedef  scalar_t__ device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int,char const*,int) ; 
 int ISACFGATTR_HINTS ; 
 int ISA_ORDER_SENSITIVE ; 
 int ISA_ORDER_SPECULATIVE ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (char const*,int) ; 
 scalar_t__ FUNC6 (char const*,int,char*,int*) ; 

void
FUNC7(device_t parent, const char *name, int unit)
{
	device_t	child;
	int		sensitive, start, count;
	int		order;

	/* device-specific flag overrides any wildcard */
	sensitive = 0;
	if (FUNC6(name, unit, "sensitive", &sensitive) != 0)
		FUNC6(name, -1, "sensitive", &sensitive);

	if (sensitive)
		order = ISA_ORDER_SENSITIVE;
	else
		order = ISA_ORDER_SPECULATIVE;

	child = FUNC0(parent, order, name, unit);
	if (child == 0)
		return;

	start = 0;
	count = 0;
	FUNC6(name, unit, "port", &start);
	FUNC6(name, unit, "portsize", &count);
	if (start > 0 || count > 0)
		FUNC1(child, SYS_RES_IOPORT, 0, start, count);

	start = 0;
	count = 0;
	FUNC6(name, unit, "maddr", &start);
	FUNC6(name, unit, "msize", &count);
	if (start > 0 || count > 0)
		FUNC1(child, SYS_RES_MEMORY, 0, start, count);

	if (FUNC6(name, unit, "irq", &start) == 0 && start > 0)
		FUNC1(child, SYS_RES_IRQ, 0, start, 1);

	if (FUNC6(name, unit, "drq", &start) == 0 && start >= 0)
		FUNC1(child, SYS_RES_DRQ, 0, start, 1);

	if (FUNC5(name, unit))
		FUNC2(child);

	FUNC4(child, (FUNC3(child)|ISACFGATTR_HINTS));
}
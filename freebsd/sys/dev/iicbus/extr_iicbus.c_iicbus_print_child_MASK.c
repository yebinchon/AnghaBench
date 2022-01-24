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
struct iicbus_ivar {scalar_t__ addr; int /*<<< orphan*/  rl; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct iicbus_ivar* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child)
{
	struct iicbus_ivar *devi = FUNC0(child);
	int retval = 0;

	retval += FUNC2(dev, child);
	if (devi->addr != 0)
		retval += FUNC3(" at addr %#x", devi->addr);
	FUNC4(&devi->rl, "irq", SYS_RES_IRQ, "%jd");
	retval += FUNC1(dev, child);

	return (retval);
}
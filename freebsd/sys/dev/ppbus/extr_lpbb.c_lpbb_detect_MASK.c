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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ALIM ; 
 int I2CKEY ; 
 int /*<<< orphan*/  PPB_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	device_t ppbus = FUNC0(dev);

	FUNC3(ppbus);
	if (FUNC5(ppbus, dev, PPB_DONTWAIT)) {
		FUNC7(ppbus);
		FUNC1(dev, "can't allocate ppbus\n");
		return (0);
	}

	FUNC2(dev);

	if ((FUNC6(ppbus) & I2CKEY) ||
		((FUNC6(ppbus) & ALIM) != ALIM)) {
		FUNC4(ppbus, dev);
		FUNC7(ppbus);
		return (0);
	}

	FUNC4(ppbus, dev);
	FUNC7(ppbus);

	return (1);
}
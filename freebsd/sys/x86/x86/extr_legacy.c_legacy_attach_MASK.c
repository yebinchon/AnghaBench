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
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	device_t child;

	FUNC6(dev);

	/*
	 * Let our child drivers identify any child devices that they
	 * can find.  Once that is done attach any devices that we
	 * found.
	 */
	FUNC2(dev);
	FUNC1(dev);

	/*
	 * If we didn't see ISA on a PCI bridge, add a top-level bus.
	 */
	if (!FUNC4(FUNC3("isa"), 0)) {
		child = FUNC0(dev, 0, "isa", 0);
		if (child == NULL)
			FUNC7("legacy_attach isa");
		FUNC5(child);
	}

	return 0;
}
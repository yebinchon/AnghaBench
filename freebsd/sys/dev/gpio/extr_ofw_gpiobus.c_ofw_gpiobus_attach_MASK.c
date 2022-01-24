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
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	int err;
	phandle_t child;

	err = FUNC6(dev);
	if (err != 0)
		return (err);
	FUNC5(dev);
	FUNC3(dev);
	/*
	 * Attach the children represented in the device tree.
	 */
	for (child = FUNC0(FUNC7(dev)); child != 0;
	    child = FUNC2(child)) {
		if (!FUNC1(child, "gpios"))
			continue;
		if (FUNC8(dev, NULL, child) == NULL)
			continue;
	}

	return (FUNC4(dev));
}
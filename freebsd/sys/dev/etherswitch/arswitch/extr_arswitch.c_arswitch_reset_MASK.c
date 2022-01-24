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
 int AR8X16_MASK_CTRL_SOFT_RESET ; 
 int /*<<< orphan*/  AR8X16_REG_MASK_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{

	FUNC2(dev, AR8X16_REG_MASK_CTRL,
	    AR8X16_MASK_CTRL_SOFT_RESET);
	FUNC0(1000);
	if (FUNC1(dev, AR8X16_REG_MASK_CTRL) &
	    AR8X16_MASK_CTRL_SOFT_RESET) {
		FUNC3(dev, "unable to reset switch\n");
		return (-1);
	}
	return (0);
}
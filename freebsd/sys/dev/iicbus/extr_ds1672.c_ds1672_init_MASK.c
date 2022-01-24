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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  DS1672_CTRL ; 
 int DS1672_CTRL_EOSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	uint8_t ctrl;
	int error;

	error = FUNC1(dev, DS1672_CTRL, &ctrl, 1);
	if (error)
		return (error);

	/*
	 * Check if oscialltor is not runned.
	 */
	if (ctrl & DS1672_CTRL_EOSC) {
		FUNC0(dev, "RTC oscillator was stopped. Check system"
		    " time and RTC battery.\n");
		ctrl &= ~DS1672_CTRL_EOSC;	/* Start oscillator. */
		error = FUNC2(dev, DS1672_CTRL, &ctrl, 1);
	}
	return (error);
}
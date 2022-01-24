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
 int ENXIO ; 
 int /*<<< orphan*/  RTC_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{

	if (FUNC3(FUNC2(dev), "rtc") == 0) {
		/* The bq4802 is not supported, yet. */
		if (FUNC1(dev) != NULL &&
		    FUNC3(FUNC1(dev), "bq4802") == 0)
			return (ENXIO);
		FUNC0(dev, RTC_DESC);
		return (0);
	}

	return (ENXIO);
}
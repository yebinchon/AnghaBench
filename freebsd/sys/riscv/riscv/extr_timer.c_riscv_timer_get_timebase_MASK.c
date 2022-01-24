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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int,char*) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t *freq)
{
	phandle_t node;
	int len;

	node = FUNC0("/cpus");
	if (node == -1) {
		if (bootverbose)
			FUNC3(dev, "Can't find cpus node.\n");
		return (ENXIO);
	}

	len = FUNC2(node, "timebase-frequency");
	if (len != 4) {
		if (bootverbose)
			FUNC3(dev,
			    "Can't find timebase-frequency property.\n");
		return (ENXIO);
	}

	FUNC1(node, "timebase-frequency", freq, len);

	return (0);
}
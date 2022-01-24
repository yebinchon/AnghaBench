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
 int /*<<< orphan*/  BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rlintphys ; 
 int /*<<< orphan*/  rlphys ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	int rv;

	rv = FUNC1(dev, rlphys, BUS_PROBE_DEFAULT);
	if (rv <= 0)
		return (rv);

	if (FUNC0(dev, "rl") || FUNC0(dev, "re"))
		return (FUNC1(dev, rlintphys, BUS_PROBE_DEFAULT));
	return (ENXIO);
}
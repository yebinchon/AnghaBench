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
 int BUS_PROBE_GENERIC ; 
 int ENXIO ; 
 scalar_t__ PCIC_SERIALBUS ; 
 scalar_t__ PCIS_SERIALBUS_IPMI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{

	if (FUNC1(dev) == PCIC_SERIALBUS &&
	    FUNC2(dev) == PCIS_SERIALBUS_IPMI) {
		FUNC0(dev, "IPMI System Interface");
		return (BUS_PROBE_GENERIC);
	}

	return (ENXIO);
}
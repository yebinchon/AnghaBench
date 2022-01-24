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
 scalar_t__ PCIC_BRIDGE ; 
 scalar_t__ PCIS_BRIDGE_HOST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char*
FUNC4(device_t dev)
{
	if (FUNC1(dev) != PCIC_BRIDGE
	    || FUNC3(dev) != PCIS_BRIDGE_HOST)
		return NULL;

	if (FUNC0(dev) == 0)
		return NULL;

	switch (FUNC2(dev)) {
	case 0x70061022:
		return ("AMD 751 host to AGP bridge");
	case 0x700e1022:
		return ("AMD 761 host to AGP bridge");
	case 0x700c1022:
		return ("AMD 762 host to AGP bridge");
	}

	return NULL;
}
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
	if (FUNC1(dev) != PCIC_BRIDGE ||
	    FUNC3(dev) != PCIS_BRIDGE_HOST)
		return NULL;

	if (FUNC0(dev) == 0)
		return NULL;

	switch (FUNC2(dev)) {
	case 0xcab01002:
		return ("ATI RS100 AGP bridge");
	case 0xcab21002:
		return ("ATI RS200 AGP bridge");
	case 0xcbb21002:
		return ("ATI RS200M AGP bridge");
	case 0xcab31002:
		return ("ATI RS250 AGP bridge");
	case 0x58301002:
		return ("ATI RS300_100 AGP bridge");
	case 0x58311002:
		return ("ATI RS300_133 AGP bridge");
	case 0x58321002:
		return ("ATI RS300_166 AGP bridge");
	case 0x58331002:
		return ("ATI RS300_200 AGP bridge");
	}

	return NULL;
}
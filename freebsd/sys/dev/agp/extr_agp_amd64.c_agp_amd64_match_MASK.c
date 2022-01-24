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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char*
FUNC5(device_t dev)
{
	if (FUNC2(dev) != PCIC_BRIDGE ||
	    FUNC4(dev) != PCIS_BRIDGE_HOST ||
	    FUNC1(dev) == 0)
		return (NULL);

	switch (FUNC3(dev)) {
	case 0x74541022:
		return ("AMD 8151 AGP graphics tunnel");
	case 0x07551039:
		return ("SiS 755 host to AGP bridge");
	case 0x07601039:
		return ("SiS 760 host to AGP bridge");
	case 0x168910b9:
		return ("ULi M1689 AGP Controller");
	case 0x00d110de:
		if (FUNC0(0x00d2))
			return (NULL);
		return ("NVIDIA nForce3 AGP Controller");
	case 0x00e110de:
		if (FUNC0(0x00e2))
			return (NULL);
		return ("NVIDIA nForce3-250 AGP Controller");
	case 0x02041106:
		return ("VIA 8380 host to PCI bridge");
	case 0x02381106:
		return ("VIA 3238 host to PCI bridge");
	case 0x02821106:
		return ("VIA K8T800Pro host to PCI bridge");
	case 0x31881106:
		return ("VIA 8385 host to PCI bridge");
	}

	return (NULL);
}
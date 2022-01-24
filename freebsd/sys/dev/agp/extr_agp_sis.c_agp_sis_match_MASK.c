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
	case 0x00011039:
		return ("SiS 5591 host to AGP bridge");
	case 0x05301039:
		return ("SiS 530 host to AGP bridge");
	case 0x05401039:
		return ("SiS 540 host to AGP bridge");
	case 0x05501039:
		return ("SiS 550 host to AGP bridge");
	case 0x06201039:
		return ("SiS 620 host to AGP bridge");
	case 0x06301039:
		return ("SiS 630 host to AGP bridge");
	case 0x06451039:
		return ("SiS 645 host to AGP bridge");
	case 0x06461039:
		return ("SiS 645DX host to AGP bridge");
	case 0x06481039:
		return ("SiS 648 host to AGP bridge");
	case 0x06501039:
		return ("SiS 650 host to AGP bridge");
	case 0x06511039:
		return ("SiS 651 host to AGP bridge");
	case 0x06551039:
		return ("SiS 655 host to AGP bridge");
	case 0x06611039:
		return ("SiS 661 host to AGP bridge");
	case 0x07301039:
		return ("SiS 730 host to AGP bridge");
	case 0x07351039:
		return ("SiS 735 host to AGP bridge");
	case 0x07401039:
		return ("SiS 740 host to AGP bridge");
	case 0x07411039:
		return ("SiS 741 host to AGP bridge");
	case 0x07451039:
		return ("SiS 745 host to AGP bridge");
	case 0x07461039:
		return ("SiS 746 host to AGP bridge");
	}

	return NULL;
}
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
 int BUS_PROBE_LOW_PRIORITY ; 
#define  EMU10K1_PCI_ID 130 
#define  EMU10K2_PCI_ID 129 
#define  EMU10K3_PCI_ID 128 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	char *s = NULL;

	switch (FUNC1(dev)) {
	case EMU10K1_PCI_ID:
		s = "Creative EMU10K1";
		break;

	case EMU10K2_PCI_ID:
		if (FUNC2(dev) == 0x04)
			s = "Creative Audigy 2 (EMU10K2)";
		else
			s = "Creative Audigy (EMU10K2)";
		break;

	case EMU10K3_PCI_ID:
		s = "Creative Audigy 2 (EMU10K3)";
		break;

	default:
		return ENXIO;
	}

	FUNC0(dev, s);
	return BUS_PROBE_LOW_PRIORITY;
}
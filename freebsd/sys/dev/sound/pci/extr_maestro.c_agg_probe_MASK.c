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
 int BUS_PROBE_DEFAULT ; 
 int ENXIO ; 
#define  MAESTRO_1_PCI_ID 130 
#define  MAESTRO_2E_PCI_ID 129 
#define  MAESTRO_2_PCI_ID 128 
 scalar_t__ PCIC_MULTIMEDIA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	char *s = NULL;

	switch (FUNC2(dev)) {
	case MAESTRO_1_PCI_ID:
		s = "ESS Technology Maestro-1";
		break;

	case MAESTRO_2_PCI_ID:
		s = "ESS Technology Maestro-2";
		break;

	case MAESTRO_2E_PCI_ID:
		s = "ESS Technology Maestro-2E";
		break;
	}

	if (s != NULL && FUNC1(dev) == PCIC_MULTIMEDIA) {
		FUNC0(dev, s);
		return BUS_PROBE_DEFAULT;
	}
	return ENXIO;
}
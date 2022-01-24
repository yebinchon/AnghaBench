#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int model; int subvendor; char* desc; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int BUS_PROBE_GENERIC ; 
 int ENXIO ; 
 scalar_t__ PCIC_BASEPERIPH ; 
 scalar_t__ PCIS_BASEPERIPH_SDHC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* sdhci_devices ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	uint32_t model;
	uint16_t subvendor;
	uint8_t class, subclass;
	int i, result;

	model = (uint32_t)FUNC2(dev) << 16;
	model |= (uint32_t)FUNC5(dev) & 0x0000ffff;
	subvendor = FUNC4(dev);
	class = FUNC1(dev);
	subclass = FUNC3(dev);

	result = ENXIO;
	for (i = 0; sdhci_devices[i].model != 0; i++) {
		if (sdhci_devices[i].model == model &&
		    (sdhci_devices[i].subvendor == 0xffff ||
		    sdhci_devices[i].subvendor == subvendor)) {
			FUNC0(dev, sdhci_devices[i].desc);
			result = BUS_PROBE_DEFAULT;
			break;
		}
	}
	if (result == ENXIO && class == PCIC_BASEPERIPH &&
	    subclass == PCIS_BASEPERIPH_SDHC) {
		FUNC0(dev, "Generic SD HCI");
		result = BUS_PROBE_GENERIC;
	}

	return (result);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  desc ;
struct TYPE_3__ {int model; char* desc; } ;

/* Variables and functions */
 int BUS_PROBE_DEFAULT ; 
 int BUS_PROBE_GENERIC ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ PCIC_MULTIMEDIA ; 
 scalar_t__ PCIS_MULTIMEDIA_HDA ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* hdac_devices ; 
 int FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	int i, result;
	uint32_t model;
	uint16_t class, subclass;
	char desc[64];

	model = (uint32_t)FUNC5(dev) << 16;
	model |= (uint32_t)FUNC7(dev) & 0x0000ffff;
	class = FUNC4(dev);
	subclass = FUNC6(dev);

	FUNC1(desc, sizeof(desc));
	result = ENXIO;
	for (i = 0; i < FUNC3(hdac_devices); i++) {
		if (hdac_devices[i].model == model) {
			FUNC10(desc, hdac_devices[i].desc, sizeof(desc));
			result = BUS_PROBE_DEFAULT;
			break;
		}
		if (FUNC0(hdac_devices[i].model, model) &&
		    class == PCIC_MULTIMEDIA &&
		    subclass == PCIS_MULTIMEDIA_HDA) {
			FUNC8(desc, sizeof(desc),
			    "%s (0x%04x)",
			    hdac_devices[i].desc, FUNC5(dev));
			result = BUS_PROBE_GENERIC;
			break;
		}
	}
	if (result == ENXIO && class == PCIC_MULTIMEDIA &&
	    subclass == PCIS_MULTIMEDIA_HDA) {
		FUNC8(desc, sizeof(desc), "Generic (0x%08x)", model);
		result = BUS_PROBE_GENERIC;
	}
	if (result != ENXIO) {
		FUNC9(desc, " HDA Controller", sizeof(desc));
		FUNC2(dev, desc);
	}

	return (result);
}
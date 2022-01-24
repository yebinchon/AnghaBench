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
typedef  int u_int32_t ;
struct agp_intel_softc {TYPE_1__* gatt; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int ag_physical; } ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_INTEL_AGPCTRL ; 
 int /*<<< orphan*/  AGP_INTEL_ATTBASE ; 
 int /*<<< orphan*/  AGP_INTEL_ERRSTS ; 
 int /*<<< orphan*/  AGP_INTEL_I820_RDCR ; 
 int /*<<< orphan*/  AGP_INTEL_I845_AGPM ; 
 int /*<<< orphan*/  AGP_INTEL_I8XX_ERRSTS ; 
 int /*<<< orphan*/  AGP_INTEL_MCHCFG ; 
 int /*<<< orphan*/  AGP_INTEL_NBXCFG ; 
 struct agp_intel_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct agp_intel_softc *sc;
	u_int32_t type;
	u_int32_t value;

	sc = FUNC0(dev);
	type = FUNC1(dev);

	/* Install the gatt. */
	FUNC3(dev, AGP_INTEL_ATTBASE, sc->gatt->ag_physical, 4);

	/* Enable the GLTB and setup the control register. */
	switch (type) {
	case 0x71908086: /* 440LX/EX */
		FUNC3(dev, AGP_INTEL_AGPCTRL, 0x2080, 4);
		break;
	case 0x71808086: /* 440BX */
		/*
		 * XXX: Should be 0xa080?  Bit 9 is undefined, and
		 * bit 13 being on and bit 15 being clear is illegal.
		 */
		FUNC3(dev, AGP_INTEL_AGPCTRL, 0x2280, 4);
		break;
	default:
		value = FUNC2(dev, AGP_INTEL_AGPCTRL, 4);
		FUNC3(dev, AGP_INTEL_AGPCTRL, value | 0x80, 4);
	}

	/* Enable aperture accesses. */
	switch (type) {
	case 0x25008086: /* i820 */
	case 0x25018086: /* i820 */
		FUNC3(dev, AGP_INTEL_I820_RDCR,
				 (FUNC2(dev, AGP_INTEL_I820_RDCR, 1)
				  | (1 << 1)), 1);
		break;
	case 0x1a308086: /* i845 */
	case 0x25608086: /* i845G */
	case 0x33408086: /* i855 */
	case 0x35808086: /* i855GM */
	case 0x25708086: /* i865 */
	case 0x25788086: /* i875P */
		FUNC3(dev, AGP_INTEL_I845_AGPM,
				 (FUNC2(dev, AGP_INTEL_I845_AGPM, 1)
				  | (1 << 1)), 1);
		break;
	case 0x1a218086: /* i840 */
	case 0x25308086: /* i850 */
	case 0x25318086: /* i860 */
	case 0x255d8086: /* E7205 */
	case 0x25508086: /* E7505 */
		FUNC3(dev, AGP_INTEL_MCHCFG,
				 (FUNC2(dev, AGP_INTEL_MCHCFG, 2)
				  | (1 << 9)), 2);
		break;
	default: /* Intel Generic (maybe) */
		FUNC3(dev, AGP_INTEL_NBXCFG,
				 (FUNC2(dev, AGP_INTEL_NBXCFG, 4)
				  & ~(1 << 10)) | (1 << 9), 4);
	}

	/* Clear errors. */
	switch (type) {
	case 0x1a218086: /* i840 */
		FUNC3(dev, AGP_INTEL_I8XX_ERRSTS, 0xc000, 2);
		break;
	case 0x25008086: /* i820 */
	case 0x25018086: /* i820 */
	case 0x1a308086: /* i845 */
	case 0x25608086: /* i845G */
	case 0x25308086: /* i850 */
	case 0x33408086: /* i855 */
	case 0x25318086: /* i860 */
	case 0x25708086: /* i865 */
	case 0x25788086: /* i875P */
	case 0x255d8086: /* E7205 */
	case 0x25508086: /* E7505 */
		FUNC3(dev, AGP_INTEL_I8XX_ERRSTS, 0x00ff, 2);
		break;
	default: /* Intel Generic (maybe) */
		FUNC3(dev, AGP_INTEL_ERRSTS + 1, 7, 1);
	}
}
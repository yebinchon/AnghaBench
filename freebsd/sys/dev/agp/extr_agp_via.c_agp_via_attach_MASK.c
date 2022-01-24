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
typedef  int u_int32_t ;
struct agp_via_softc {int initial_aperture; scalar_t__* regs; struct agp_gatt* gatt; } ;
struct agp_gatt {int ag_physical; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ AGP_CAPID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ AGP_VIA_AGPSEL ; 
 int ENOMEM ; 
 size_t REG_ATTBASE ; 
 size_t REG_GARTCTRL ; 
 struct agp_gatt* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct agp_via_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 
 scalar_t__* via_v2_regs ; 
 scalar_t__* via_v3_regs ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct agp_via_softc *sc = FUNC6(dev);
	struct agp_gatt *gatt;
	int error;
	u_int32_t agpsel;
	u_int32_t capid;

	sc->regs = via_v2_regs;

	/* Look at the capability register to see if we handle AGP3 */
	capid = FUNC8(dev, FUNC3(dev) + AGP_CAPID, 4);
	if (((capid >> 20) & 0x0f) >= 3) { 
		agpsel = FUNC8(dev, AGP_VIA_AGPSEL, 1);
		if ((agpsel & (1 << 1)) == 0)
			sc->regs = via_v3_regs;
	}
	
	error = FUNC4(dev);
	if (error)
		return error;

	sc->initial_aperture = FUNC0(dev);

	for (;;) {
		gatt = FUNC2(dev);
		if (gatt)
			break;

		/*
		 * Probably contigmalloc failure. Try reducing the
		 * aperture so that the gatt size reduces.
		 */
		if (FUNC1(dev, FUNC0(dev) / 2)) {
			FUNC5(dev);
			return ENOMEM;
		}
	}
	sc->gatt = gatt;

	if (sc->regs == via_v2_regs) {
		/* Install the gatt. */
		FUNC9(dev, sc->regs[REG_ATTBASE], gatt->ag_physical | 3, 4);
		
		/* Enable the aperture. */
		FUNC9(dev, sc->regs[REG_GARTCTRL], 0x0f, 4);
	} else {
		u_int32_t gartctrl;

		/* Install the gatt. */
		FUNC9(dev, sc->regs[REG_ATTBASE], gatt->ag_physical, 4);
		
		/* Enable the aperture. */
		gartctrl = FUNC8(dev, sc->regs[REG_GARTCTRL], 4);
		FUNC9(dev, sc->regs[REG_GARTCTRL], gartctrl | (3 << 7), 4);
	}

	FUNC7(dev, "aperture size is %dM\n",
		sc->initial_aperture / 1024 / 1024);

	return 0;
}
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
struct agp_gatt {int ag_physical; } ;
struct agp_ali_softc {int initial_aperture; struct agp_gatt* gatt; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_ALI_ATTBASE ; 
 int /*<<< orphan*/  AGP_ALI_TLBCTRL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int ENXIO ; 
 struct agp_gatt* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct agp_ali_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct agp_ali_softc *sc = FUNC5(dev);
	struct agp_gatt *gatt;
	int error;
	u_int32_t attbase;

	error = FUNC3(dev);
	if (error)
		return error;

	sc->initial_aperture = FUNC0(dev);
	if (sc->initial_aperture == 0) {
		FUNC6(dev, "bad initial aperture size, disabling\n");
		return ENXIO;
	}

	for (;;) {
		gatt = FUNC2(dev);
		if (gatt)
			break;

		/*
		 * Probably contigmalloc failure. Try reducing the
		 * aperture so that the gatt size reduces.
		 */
		if (FUNC1(dev, FUNC0(dev) / 2)) {
			FUNC4(dev);
			return ENOMEM;
		}
	}
	sc->gatt = gatt;

	/* Install the gatt. */
	attbase = FUNC7(dev, AGP_ALI_ATTBASE, 4);
	FUNC8(dev, AGP_ALI_ATTBASE, gatt->ag_physical |
	    (attbase & 0xfff), 4);
	
	/* Enable the TLB. */
	FUNC8(dev, AGP_ALI_TLBCTRL, 0x10, 1);

	return 0;
}
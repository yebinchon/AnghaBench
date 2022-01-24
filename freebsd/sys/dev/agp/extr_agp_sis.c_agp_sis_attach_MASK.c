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
struct agp_sis_softc {int initial_aperture; struct agp_gatt* gatt; } ;
struct agp_gatt {int ag_physical; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  AGP_SIS_ATTBASE ; 
 int /*<<< orphan*/  AGP_SIS_TLBCTRL ; 
 int /*<<< orphan*/  AGP_SIS_WINCTRL ; 
 int ENOMEM ; 
 struct agp_gatt* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct agp_sis_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct agp_sis_softc *sc = FUNC5(dev);
	struct agp_gatt *gatt;
	int error;

	error = FUNC3(dev);
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
			FUNC4(dev);
			return ENOMEM;
		}
	}
	sc->gatt = gatt;

	/* Install the gatt. */
	FUNC7(dev, AGP_SIS_ATTBASE, gatt->ag_physical, 4);
	
	/* Enable the aperture. */
	FUNC7(dev, AGP_SIS_WINCTRL,
			 FUNC6(dev, AGP_SIS_WINCTRL, 1) | 3, 1);

	/*
	 * Enable the TLB and make it automatically invalidate entries
	 * when the GATT is written.
	 */
	FUNC7(dev, AGP_SIS_TLBCTRL, 0x05, 1);

	return 0;
}
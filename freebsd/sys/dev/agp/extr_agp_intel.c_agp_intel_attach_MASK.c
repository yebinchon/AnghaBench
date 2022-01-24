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
struct agp_intel_softc {int aperture_mask; int current_aperture; int initial_aperture; struct agp_gatt* gatt; } ;
struct agp_gatt {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AGP_INTEL_APSIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ENOMEM ; 
 int MAX_APSIZE ; 
 struct agp_gatt* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct agp_intel_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct agp_intel_softc *sc;
	struct agp_gatt *gatt;
	u_int32_t value;
	int error;

	sc = FUNC6(dev);

	error = FUNC3(dev);
	if (error)
		return (error);

	/* Determine maximum supported aperture size. */
	value = FUNC7(dev, AGP_INTEL_APSIZE, 1);
	FUNC8(dev, AGP_INTEL_APSIZE, MAX_APSIZE, 1);
	sc->aperture_mask = FUNC7(dev, AGP_INTEL_APSIZE, 1) &
	    MAX_APSIZE;
	FUNC8(dev, AGP_INTEL_APSIZE, value, 1);
	sc->current_aperture = sc->initial_aperture = FUNC0(dev);

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
			return (ENOMEM);
		}
	}
	sc->gatt = gatt;

	FUNC5(dev);

	return (0);
}
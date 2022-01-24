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
struct agp_intel_softc {int aperture_mask; int current_aperture; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_INTEL_APSIZE ; 
 int EINVAL ; 
 struct agp_intel_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC2(device_t dev, u_int32_t aperture)
{
	struct agp_intel_softc *sc;
	u_int32_t apsize;

	sc = FUNC0(dev);

	/*
	 * Reverse the magic from get_aperture.
	 */
	apsize = ((aperture - 1) >> 22) ^ sc->aperture_mask;

	/*
	 * Double check for sanity.
	 */
	if ((((apsize ^ sc->aperture_mask) << 22) | ((1 << 22) - 1)) + 1 != aperture)
		return (EINVAL);

	sc->current_aperture = apsize;

	FUNC1(dev, AGP_INTEL_APSIZE, apsize, 1);

	return (0);
}
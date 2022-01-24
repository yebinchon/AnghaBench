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
struct agp_apple_softc {int /*<<< orphan*/  gatt; scalar_t__ needs_2x_reset; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIN_AGP_GART_2XRESET ; 
 int /*<<< orphan*/  UNIN_AGP_GART_CONTROL ; 
 int /*<<< orphan*/  UNIN_AGP_GART_INVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct agp_apple_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct agp_apple_softc *sc = FUNC4(dev);

	FUNC1(dev);

	/* Disable the aperture and TLB */
	FUNC5(dev, UNIN_AGP_GART_CONTROL, UNIN_AGP_GART_INVAL, 4);
	FUNC5(dev, UNIN_AGP_GART_CONTROL, 0, 4);

	if (sc->needs_2x_reset) {
		FUNC5(dev, UNIN_AGP_GART_CONTROL,
		    UNIN_AGP_GART_2XRESET, 4);
		FUNC5(dev, UNIN_AGP_GART_CONTROL, 0, 4);
	}

	FUNC0(dev, 0);

	FUNC2(sc->gatt);
	FUNC3(dev);
	return 0;
}
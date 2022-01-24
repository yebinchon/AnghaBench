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
struct TYPE_2__ {int /*<<< orphan*/  as_aperture; } ;
struct agp_nvidia_softc {int /*<<< orphan*/  gatt; int /*<<< orphan*/  initial_aperture; TYPE_1__ agp; int /*<<< orphan*/  mc2_dev; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_NVIDIA_0_APSIZE ; 
 int /*<<< orphan*/  AGP_NVIDIA_2_GARTCTRL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct agp_nvidia_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9 (device_t dev)
{
	struct agp_nvidia_softc *sc = FUNC4(dev);
	u_int32_t temp;

	FUNC1(dev);

	/* GART Control */
	temp = FUNC6(sc->dev, AGP_NVIDIA_0_APSIZE, 4);
	FUNC7(sc->dev, AGP_NVIDIA_0_APSIZE, temp & ~(0x100), 4);

	/* GTLB Control */
	temp = FUNC6(sc->mc2_dev, AGP_NVIDIA_2_GARTCTRL, 4);
	FUNC7(sc->mc2_dev, AGP_NVIDIA_2_GARTCTRL, temp & ~(0x11), 4);

	/* Put the aperture back the way it started. */
	FUNC0(dev, sc->initial_aperture);

	/* restore iorr for previous aperture size */
	FUNC5(FUNC8(sc->agp.as_aperture),
			 sc->initial_aperture);

	FUNC2(sc->gatt);
	FUNC3(dev);

	return (0);
}
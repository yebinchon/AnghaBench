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
struct agp_sis_softc {int /*<<< orphan*/  gatt; int /*<<< orphan*/  initial_aperture; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AGP_SIS_TLBCTRL ; 
 int /*<<< orphan*/  AGP_SIS_WINCTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct agp_sis_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct agp_sis_softc *sc = FUNC4(dev);

	FUNC1(dev);

	/* Disable the aperture.. */
	FUNC6(dev, AGP_SIS_WINCTRL,
			 FUNC5(dev, AGP_SIS_WINCTRL, 1) & ~3, 1);

	/* and the TLB. */
	FUNC6(dev, AGP_SIS_TLBCTRL, 0, 1);

	/* Put the aperture back the way it started. */
	FUNC0(dev, sc->initial_aperture);

	FUNC2(sc->gatt);
	FUNC3(dev);
	return 0;
}
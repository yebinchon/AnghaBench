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
struct agp_via_softc {int /*<<< orphan*/  gatt; int /*<<< orphan*/  initial_aperture; int /*<<< orphan*/ * regs; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t REG_ATTBASE ; 
 size_t REG_GARTCTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct agp_via_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct agp_via_softc *sc = FUNC4(dev);

	FUNC1(dev);

	FUNC5(dev, sc->regs[REG_GARTCTRL], 0, 4);
	FUNC5(dev, sc->regs[REG_ATTBASE], 0, 4);
	FUNC0(dev, sc->initial_aperture);
	FUNC2(sc->gatt);
	FUNC3(dev);

	return 0;
}
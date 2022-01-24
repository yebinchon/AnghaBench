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
struct mpc85xx_gpio_softc {int /*<<< orphan*/ * busdev; int /*<<< orphan*/ * in_res; int /*<<< orphan*/ * out_res; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct mpc85xx_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 struct mpc85xx_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct mpc85xx_gpio_softc *sc = FUNC4(dev);
	int rid;

	sc->dev = dev;

	FUNC0(sc);

	/* Allocate memory. */
	rid = 0;
	sc->out_res = FUNC3(dev,
		     SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (sc->out_res == NULL) {
		FUNC5(dev, "Can't allocate memory for device output port");
		FUNC7(dev);
		return (ENOMEM);
	}

	rid = 1;
	sc->in_res = FUNC3(dev,
		     SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (sc->in_res == NULL) {
		FUNC5(dev, "Can't allocate memory for device input port");
		FUNC7(dev);
		return (ENOMEM);
	}

	sc->busdev = FUNC6(dev);
	if (sc->busdev == NULL) {
		FUNC7(dev);
		return (ENOMEM);
	}

	FUNC1(FUNC2(FUNC8(dev)), dev);

	return (0);
}
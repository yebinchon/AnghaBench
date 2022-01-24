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
struct i2c_softc {int /*<<< orphan*/  mutex; int /*<<< orphan*/ * iicbus; int /*<<< orphan*/ * res; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; scalar_t__ rid; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int IIC_NOERR ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct i2c_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct i2c_softc *sc;
	sc = FUNC4(dev);

	sc->dev = dev;
	sc->rid = 0;

	FUNC7(&sc->mutex, FUNC3(dev), "I2C", MTX_DEF);

	sc->res = FUNC0(dev, SYS_RES_MEMORY, &sc->rid,
	    RF_ACTIVE);
	if (sc->res == NULL) {
		FUNC5(dev, "could not allocate resources");
		FUNC6(&sc->mutex);
		return (ENXIO);
	}

	sc->bst = FUNC9(sc->res);
	sc->bsh = FUNC8(sc->res);

	sc->iicbus = FUNC2(dev, "iicbus", -1);
	if (sc->iicbus == NULL) {
		FUNC5(dev, "could not add iicbus child");
		FUNC6(&sc->mutex);
		return (ENXIO);
	}

	FUNC1(dev);
	return (IIC_NOERR);
}
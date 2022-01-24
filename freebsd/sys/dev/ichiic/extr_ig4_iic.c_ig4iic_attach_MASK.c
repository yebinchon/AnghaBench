#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  intr_handle; int /*<<< orphan*/  intr_res; int /*<<< orphan*/ * iicbus; int /*<<< orphan*/  version; int /*<<< orphan*/  call_lock; int /*<<< orphan*/  io_lock; } ;
typedef  TYPE_1__ ig4iic_softc_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IG4_I2C_ENABLE ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  ig4iic_intr ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

int
FUNC10(ig4iic_softc_t *sc)
{
	int error;

	FUNC7(&sc->io_lock, "IG4 I/O lock", NULL, MTX_SPIN);
	FUNC9(&sc->call_lock, "IG4 call lock");

	FUNC5(sc);

	error = FUNC6(sc, FUNC0(sc->version));
	if (error)
		goto done;

	sc->iicbus = FUNC3(sc->dev, "iicbus", -1);
	if (sc->iicbus == NULL) {
		FUNC4(sc->dev, "iicbus driver not found\n");
		error = ENXIO;
		goto done;
	}

	if (FUNC8(sc, IG4_I2C_ENABLE)) {
		FUNC4(sc->dev, "controller error during attach-2\n");
		error = ENXIO;
		goto done;
	}
	if (FUNC8(sc, 0)) {
		FUNC4(sc->dev, "controller error during attach-3\n");
		error = ENXIO;
		goto done;
	}
	error = FUNC2(sc->dev, sc->intr_res, INTR_TYPE_MISC | INTR_MPSAFE,
			       ig4iic_intr, NULL, sc, &sc->intr_handle);
	if (error) {
		FUNC4(sc->dev,
			      "Unable to setup irq: error %d\n", error);
	}

	error = FUNC1(sc->dev);
	if (error) {
		FUNC4(sc->dev,
			      "failed to attach child: error %d\n", error);
	}

done:
	return (error);
}
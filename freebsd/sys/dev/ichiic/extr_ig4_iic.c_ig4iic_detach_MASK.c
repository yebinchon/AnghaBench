#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  call_lock; int /*<<< orphan*/  io_lock; int /*<<< orphan*/ * intr_handle; int /*<<< orphan*/ * iicbus; int /*<<< orphan*/  intr_res; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ig4iic_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  IG4_REG_INTR_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int
FUNC10(ig4iic_softc_t *sc)
{
	int error;

	if (FUNC3(sc->dev)) {
		error = FUNC0(sc->dev);
		if (error)
			return (error);
	}
	if (sc->iicbus)
		FUNC2(sc->dev, sc->iicbus);
	if (sc->intr_handle)
		FUNC1(sc->dev, sc->intr_res, sc->intr_handle);

	FUNC8(&sc->call_lock);

	sc->iicbus = NULL;
	sc->intr_handle = NULL;
	FUNC5(sc, IG4_REG_INTR_MASK, 0);
	FUNC6(sc, 0);

	FUNC9(&sc->call_lock);

	FUNC4(&sc->io_lock);
	FUNC7(&sc->call_lock);

	return (0);
}
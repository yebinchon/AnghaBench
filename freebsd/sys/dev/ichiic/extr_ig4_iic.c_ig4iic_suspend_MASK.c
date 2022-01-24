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
struct TYPE_5__ {int /*<<< orphan*/  call_lock; int /*<<< orphan*/  version; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ ig4iic_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  IG4_DEVICE_IDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IG4_REG_DEVIDLE_CTRL ; 
 int /*<<< orphan*/  IG4_REG_RESETS_SKL ; 
 int /*<<< orphan*/  IG4_RESETS_ASSERT_SKL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(ig4iic_softc_t *sc)
{
	int error;

	/* suspend all children */
	error = FUNC1(sc->dev);

	FUNC4(&sc->call_lock);
	FUNC3(sc, 0);
	if (FUNC0(sc->version)) {
		/*
		 * Place the device in the idle state, just to be safe
		 */
		FUNC2(sc, IG4_REG_DEVIDLE_CTRL, IG4_DEVICE_IDLE);
		/*
		 * Controller can become dysfunctional if I2C lines are pulled
		 * down when suspend procedure turns off power to I2C device.
		 * Place device in the reset state to avoid this.
		 */
		FUNC2(sc, IG4_REG_RESETS_SKL, IG4_RESETS_ASSERT_SKL);
	}
	FUNC5(&sc->call_lock);

	return (error);
}
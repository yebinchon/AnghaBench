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
typedef  int uint8_t ;
struct fcu_softc {int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
struct fcu_fan {scalar_t__ type; int id; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FCU_FAN_PWM ; 
 int FCU_PWM_ACTIVE ; 
 int FCU_PWM_AVAILABLE ; 
 int FCU_PWM_FAIL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 struct fcu_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int fcu_rpm_shift ; 

__attribute__((used)) static int
FUNC5(device_t dev, struct fcu_fan *fan, int *pwm, int *rpm)
{
	uint8_t reg;
	struct fcu_softc *sc;
	uint8_t buf[2];
	uint8_t active = 0, avail = 0, fail = 0;

	sc = FUNC2(dev);

	if (fan->type == FCU_FAN_PWM) {
		/* Check if the fan is available. */
		reg = FCU_PWM_AVAILABLE;
		if (FUNC4(sc->sc_dev, sc->sc_addr, reg, &avail) < 0)
			return (-1);
		if ((avail & (1 << fan->id)) == 0) {
			FUNC3(dev, "PWM Fan not available ID: %d\n",
				      fan->id);
			return (-1);
		}
		/* Check if we have a failed fan. */
		reg = FCU_PWM_FAIL;
		if (FUNC4(sc->sc_dev, sc->sc_addr, reg, &fail) < 0)
			return (-1);
		if ((fail & (1 << fan->id)) != 0) {
			FUNC3(dev, "PWM Fan failed ID: %d\n", fan->id);
			return (-1);
		}
		/* Check if fan is active. */
		reg = FCU_PWM_ACTIVE;
		if (FUNC4(sc->sc_dev, sc->sc_addr, reg, &active) < 0)
			return (-1);
		if ((active & (1 << fan->id)) == 0) {
			FUNC3(dev, "PWM Fan not active ID: %d\n",
				      fan->id);
			return (-1);
		}
		reg = FUNC1(fan->id);
	} else {
		FUNC3(dev, "Unknown fan type: %d\n", fan->type);
		return (EIO);
	}

	/* It seems that we can read the fans pwm. */
	if (FUNC4(sc->sc_dev, sc->sc_addr, reg, buf) < 0)
		return (-1);

	*pwm = (buf[0] * 1000) / 2550;

	/* Now read the rpm. */
	reg = FUNC0(fan->id);
	if (FUNC4(sc->sc_dev, sc->sc_addr, reg, buf) < 0)
		return (-1);

	*rpm = (buf[0] << (8 - fcu_rpm_shift)) | buf[1] >> fcu_rpm_shift;

	return (0);
}
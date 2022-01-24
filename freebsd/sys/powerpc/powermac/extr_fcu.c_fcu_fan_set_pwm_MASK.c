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
typedef  int uint8_t ;
struct fcu_softc {int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_rpm; int /*<<< orphan*/  min_rpm; } ;
struct fcu_fan {scalar_t__ type; int setpoint; int /*<<< orphan*/  dev; int /*<<< orphan*/  id; TYPE_1__ fan; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FCU_FAN_PWM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct fcu_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct fcu_fan *fan, int pwm)
{
	uint8_t reg;
	struct fcu_softc *sc;
	uint8_t buf[2];

	sc = FUNC1(fan->dev);

	/* Clamp to allowed range */
	pwm = FUNC4(fan->fan.min_rpm, pwm);
	pwm = FUNC5(fan->fan.max_rpm, pwm);

	if (fan->type == FCU_FAN_PWM) {
		reg = FUNC0(fan->id);
		if (pwm > 100)
			pwm = 100;
		if (pwm < 30)
			pwm = 30;
		fan->setpoint = pwm;
	} else {
		FUNC2(fan->dev, "Unknown fan type: %d\n", fan->type);
		return (EIO);
	}

	buf[0] = (pwm * 2550) / 1000;

	if (FUNC3(sc->sc_dev, sc->sc_addr, reg, buf, 1) < 0)
		return (EIO);
	return (0);
}
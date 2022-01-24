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
struct adt746x_softc {int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_rpm; int /*<<< orphan*/  min_rpm; } ;
struct adt746x_fan {int pwm_reg; int conf_reg; int setpoint; TYPE_1__ fan; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ADT746X_MANUAL_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 struct adt746x_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct adt746x_fan *fan, int pwm)
{
	uint8_t reg = 0, manual, mode = 0;
	struct adt746x_softc *sc;
	uint8_t buf;

	sc = FUNC2(fan->dev);

	/* Clamp to allowed range */
	pwm = FUNC3(fan->fan.min_rpm, pwm);
	pwm = FUNC4(fan->fan.max_rpm, pwm);

	reg = fan->pwm_reg;
	mode = fan->conf_reg;

	/* From the 7460 datasheet:
	   PWM dutycycle can be programmed from 0% (0x00) to 100% (0xFF)
	   in steps of 0.39% (256 steps).
	 */
	buf = (pwm * 100 / 39) - (pwm ? 1 : 0);
	fan->setpoint = buf;

	/* Manual mode.  */
	FUNC0(sc->sc_dev, sc->sc_addr, mode, &manual);
	manual |= ADT746X_MANUAL_MASK;
	FUNC1(sc->sc_dev, sc->sc_addr, mode, &manual);

	/* Write speed.  */
	FUNC1(sc->sc_dev, sc->sc_addr, reg, &buf);

	return (0);
}
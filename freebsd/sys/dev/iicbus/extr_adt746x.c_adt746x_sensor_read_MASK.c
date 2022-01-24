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
typedef  int uint16_t ;
struct adt746x_softc {int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
struct adt746x_sensor {scalar_t__ type; scalar_t__ reg; int /*<<< orphan*/  dev; } ;
typedef  int int8_t ;

/* Variables and functions */
 scalar_t__ ADT746X_SENSOR_SPEED ; 
 scalar_t__ ADT746X_SENSOR_TEMP ; 
 int ZERO_C_TO_K ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 struct adt746x_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct adt746x_sensor *sens)
{
	struct adt746x_softc *sc;
	int tmp = 0;
	uint16_t val;
	uint8_t data[1], data1[1];
	int8_t temp;

	sc = FUNC1(sens->dev);
	if (sens->type != ADT746X_SENSOR_SPEED) {
		if (FUNC0(sc->sc_dev, sc->sc_addr, sens->reg,
				 &temp) < 0)
			return (-1);
		if (sens->type == ADT746X_SENSOR_TEMP)
			tmp = 10 * temp + ZERO_C_TO_K;
		else
			tmp = temp;
	} else {
		if (FUNC0(sc->sc_dev, sc->sc_addr, sens->reg,
				 data) < 0)
			return (-1);
		if (FUNC0(sc->sc_dev, sc->sc_addr, sens->reg + 1,
				 data1) < 0)
			return (-1);
		val = data[0] + (data1[0] << 8);
		/* A value of 0xffff means the fan is stopped.  */
		if (val == 0 || val == 0xffff)
			tmp = 0;
		else
			tmp = (90000 * 60) / val;
	}
	return (tmp);
}
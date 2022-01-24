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
struct max6690_softc {int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
struct max6690_sensor {int id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MAX6690_EEXT_TEMP ; 
 int MAX6690_EXT_TEMP ; 
 int MAX6690_IEXT_TEMP ; 
 int MAX6690_INT_TEMP ; 
 int MAX6690_TEMP_MASK ; 
 int ZERO_C_TO_K ; 
 struct max6690_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static int
FUNC2(struct max6690_sensor *sens)
{
	uint8_t reg_int = 0, reg_ext = 0;
	uint8_t integer = 0;
	uint8_t fraction = 0;
	int err, temp;

	struct max6690_softc *sc;

	sc = FUNC0(sens->dev);

	/* The internal sensor id's are even, the external are odd. */
	if ((sens->id % 2) == 0) {
		reg_int = MAX6690_INT_TEMP;
		reg_ext = MAX6690_IEXT_TEMP;
	} else {
		reg_int = MAX6690_EXT_TEMP;
		reg_ext = MAX6690_EEXT_TEMP;
	}

	err = FUNC1(sc->sc_dev, sc->sc_addr, reg_int, &integer);

	if (err < 0)
		return (-1);

	err = FUNC1(sc->sc_dev, sc->sc_addr, reg_ext, &fraction);

	if (err < 0)
		return (-1);

	fraction &= MAX6690_TEMP_MASK;

	/* The temperature is in tenth kelvin, the fractional part resolution
	   is 0.125.
	*/
	temp = (integer * 10) + (fraction >> 5) * 10 / 8;

	return (temp + ZERO_C_TO_K);
}
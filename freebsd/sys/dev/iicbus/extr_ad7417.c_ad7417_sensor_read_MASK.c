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
struct ad7417_softc {int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  init_done; } ;
struct ad7417_sensor {scalar_t__ type; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ADC7417_TEMP_SENSOR ; 
 scalar_t__ ZERO_C_TO_K ; 
 int FUNC0 (struct ad7417_sensor*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ad7417_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct ad7417_sensor *sens)
{
	struct ad7417_softc *sc;
	int temp;

	sc = FUNC3(sens->dev);

	/* Init the ADC if not already done.*/
	if (!sc->init_done)
		if (FUNC2(sc->sc_dev, sc->sc_addr) < 0)
			return (-1);

	if (sens->type == ADC7417_TEMP_SENSOR) {
		if (FUNC1(sc->sc_dev, sc->sc_addr, &temp) < 0)
			return (-1);
		temp += ZERO_C_TO_K;
	} else {
		temp = FUNC0(sens);
	}
	return (temp);
}
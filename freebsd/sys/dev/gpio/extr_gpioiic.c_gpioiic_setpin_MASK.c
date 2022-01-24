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
struct gpioiic_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_busdev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO_PIN_INPUT ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 

__attribute__((used)) static void
FUNC2(struct gpioiic_softc *sc, int pin, int val)
{
	int				err;

	if (val == 0) {
		err = FUNC0(sc->sc_busdev, sc->sc_dev, pin, 0);
		FUNC1(sc->sc_busdev, sc->sc_dev, pin,
		    GPIO_PIN_OUTPUT);

		/*
		 * Some controllers cannot set output value while a pin is in
		 * input mode.
		 */
		if (err != 0)
			FUNC0(sc->sc_busdev, sc->sc_dev, pin, 0);
	} else {
		FUNC1(sc->sc_busdev, sc->sc_dev, pin,
		    GPIO_PIN_INPUT);
	}
}
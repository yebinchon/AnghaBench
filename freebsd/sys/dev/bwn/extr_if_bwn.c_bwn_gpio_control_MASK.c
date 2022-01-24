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
typedef  int uint32_t ;
struct bwn_softc {int /*<<< orphan*/  sc_gpio; int /*<<< orphan*/  sc_dev; } ;
struct bwn_mac {struct bwn_softc* mac_sc; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int*) ; 
 int GPIO_PIN_OUTPUT ; 
 int GPIO_PIN_TRISTATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 (int*) ; 

int
FUNC4(struct bwn_mac *mac, uint32_t pins)
{
	struct bwn_softc	*sc;
	uint32_t		 flags[32];
	int			 error;

	sc = mac->mac_sc;

	/* Determine desired pin flags */
	for (size_t pin = 0; pin < FUNC3(flags); pin++) {
		uint32_t pinbit = (1 << pin);

		if (pins & pinbit) {
			/* Tristate output */
			flags[pin] = GPIO_PIN_OUTPUT|GPIO_PIN_TRISTATE;
		} else {
			/* Leave unmodified */
			flags[pin] = 0;
		}
	}

	/* Configure all pins */
	error = FUNC0(sc->sc_gpio, 0, FUNC3(flags), flags);
	if (error) {
		FUNC2(sc->sc_dev, "error configuring %s pin flags: "
		    "%d\n", FUNC1(sc->sc_gpio), error);
		return (error);
	}

	return (0);
}
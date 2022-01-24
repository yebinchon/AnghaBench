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
typedef  size_t uint32_t ;
struct nct_softc {struct gpio_pin* pins; } ;
struct gpio_pin {size_t gp_caps; size_t gp_flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nct_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nct_softc*) ; 
 size_t GPIO_PIN_INPUT ; 
 size_t GPIO_PIN_INVIN ; 
 size_t GPIO_PIN_INVOUT ; 
 size_t GPIO_PIN_OPENDRAIN ; 
 size_t GPIO_PIN_OUTPUT ; 
 size_t GPIO_PIN_PUSHPULL ; 
 int /*<<< orphan*/  FUNC2 (struct nct_softc*) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 struct nct_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nct_softc*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (struct nct_softc*,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (struct nct_softc*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct nct_softc*,size_t) ; 

__attribute__((used)) static int
FUNC9(device_t dev, uint32_t pin_num, uint32_t flags)
{
	struct nct_softc *sc;
	struct gpio_pin *pin;

	if (!FUNC3(pin_num))
		return (EINVAL);

	sc = FUNC4(dev);
	pin = &sc->pins[pin_num];
	if ((flags & pin->gp_caps) != flags)
		return (EINVAL);

	if ((flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) ==
		(GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) {
			return (EINVAL);
	}
	if ((flags & (GPIO_PIN_OPENDRAIN | GPIO_PIN_PUSHPULL)) ==
		(GPIO_PIN_OPENDRAIN | GPIO_PIN_PUSHPULL)) {
			return (EINVAL);
	}
	if ((flags & (GPIO_PIN_INVIN | GPIO_PIN_INVOUT)) ==
		(GPIO_PIN_INVIN | GPIO_PIN_INVOUT)) {
			return (EINVAL);
	}

	FUNC0(sc);
	FUNC1(sc);
	if ((flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) != 0) {
		FUNC5(sc, pin_num, (flags & GPIO_PIN_INPUT) != 0);
		pin->gp_flags &= ~(GPIO_PIN_INPUT | GPIO_PIN_OUTPUT);
		pin->gp_flags |= flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT);
	}
	if ((flags & (GPIO_PIN_INVIN | GPIO_PIN_INVOUT)) != 0) {
		FUNC6(sc, pin_num,
		    (flags & GPIO_PIN_INVIN) != 0);
		pin->gp_flags &= ~(GPIO_PIN_INVIN | GPIO_PIN_INVOUT);
		pin->gp_flags |= flags & (GPIO_PIN_INVIN | GPIO_PIN_INVOUT);
	}
	if ((flags & (GPIO_PIN_OPENDRAIN | GPIO_PIN_PUSHPULL)) != 0) {
		if (flags & GPIO_PIN_OPENDRAIN)
			FUNC7(sc, pin_num);
		else
			FUNC8(sc, pin_num);
		pin->gp_flags &= ~(GPIO_PIN_OPENDRAIN | GPIO_PIN_PUSHPULL);
		pin->gp_flags |=
		    flags & (GPIO_PIN_OPENDRAIN | GPIO_PIN_PUSHPULL);
	}
	FUNC2(sc);

	return (0);
}
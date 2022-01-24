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
typedef  int /*<<< orphan*/  upd ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  u_long ;
struct chipc_gpio_update {int dummy; } ;
struct chipc_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chipc_gpio_softc*) ; 
 scalar_t__ CC_GPIO_NPINS ; 
 scalar_t__ FUNC1 (struct chipc_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct chipc_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct chipc_gpio_update*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  CHIPC_GPIOCTRL ; 
 int /*<<< orphan*/  CHIPC_GPIOOUT ; 
 int /*<<< orphan*/  CHIPC_GPIOOUTEN ; 
 int EINVAL ; 
 scalar_t__ FUNC5 (int,int) ; 
 int FUNC6 (struct chipc_gpio_softc*,struct chipc_gpio_update*) ; 
 struct chipc_gpio_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct chipc_gpio_update*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC10(device_t dev, uint32_t first_pin, uint32_t clear_pins,
    uint32_t change_pins, uint32_t *orig_pins)
{
	struct chipc_gpio_softc		*sc;
	struct chipc_gpio_update	 upd;
	uint32_t			 out, outen, ctrl;
	uint32_t			 num_pins;
	int				 error;

	sc = FUNC7(dev);

	if (first_pin >= CC_GPIO_NPINS)
		return (EINVAL);

	/* Determine the actual number of referenced pins */
	if (clear_pins == 0 && change_pins == 0) {
		num_pins = CC_GPIO_NPINS - first_pin;
	} else {
		int num_clear_pins, num_change_pins;

		num_clear_pins = FUNC8((u_long)clear_pins);
		num_change_pins = FUNC8((u_long)change_pins);
		num_pins = FUNC5(num_clear_pins, num_change_pins);
	}

	/* Validate the full pin range */
	if (!FUNC4(first_pin, num_pins))
		return (EINVAL);

	/* Produce an update descriptor for all pins, relative to the current
	 * pin state */
	FUNC0(sc);
	FUNC9(&upd, 0, sizeof(upd));

	out = FUNC1(sc, CHIPC_GPIOOUT);
	outen = FUNC1(sc, CHIPC_GPIOOUTEN);
	ctrl = FUNC1(sc, CHIPC_GPIOCTRL);

	for (uint32_t i = 0; i < num_pins; i++) {
		uint32_t	pin;
		bool		pin_high;

		pin = first_pin + i;

		/* The pin must be configured for output */
		if ((outen & (1 << pin)) == 0) {
			FUNC2(sc);
			return (EINVAL);
		}

		/* The pin must not tristated */
		if ((ctrl & (1 << pin)) != 0) {
			FUNC2(sc);
			return (EINVAL);
		}

		/* Fetch current state */
		if (out & (1 << pin)) {
			pin_high = true;
		} else {
			pin_high = false;
		}

		/* Apply clear/toggle request */
		if (clear_pins & (1 << pin))
			pin_high = false;

		if (change_pins & (1 << pin))
			pin_high = !pin_high;

		/* Add to our update descriptor */
		FUNC3(&upd, pin, out, pin_high);
	}

	/* Commit the update */
	error = FUNC6(sc, &upd);
	FUNC2(sc);

	return (error);
}
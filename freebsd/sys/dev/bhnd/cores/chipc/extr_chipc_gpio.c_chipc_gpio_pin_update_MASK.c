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
struct chipc_gpio_update {int dummy; } ;
struct chipc_gpio_softc {int /*<<< orphan*/  dev; } ;
typedef  int chipc_gpio_pin_mode ;

/* Variables and functions */
#define  CC_GPIO_PIN_INPUT 130 
#define  CC_GPIO_PIN_OUTPUT 129 
#define  CC_GPIO_PIN_TRISTATE 128 
 int /*<<< orphan*/  FUNC0 (struct chipc_gpio_update*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EINVAL ; 
 int GPIO_PIN_OUTPUT ; 
 int GPIO_PIN_PRESET_HIGH ; 
 int GPIO_PIN_PRESET_LOW ; 
 int GPIO_PIN_PULLDOWN ; 
 int GPIO_PIN_PULLUP ; 
 int GPIO_PIN_PULSATE ; 
 int FUNC2 (struct chipc_gpio_softc*,int,int,int*) ; 
 int /*<<< orphan*/  ctrl ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  out ; 
 int /*<<< orphan*/  outen ; 
 int /*<<< orphan*/  pulldown ; 
 int /*<<< orphan*/  pullup ; 
 int /*<<< orphan*/  timeroutmask ; 

__attribute__((used)) static int
FUNC4(struct chipc_gpio_softc *sc,
    struct chipc_gpio_update *update, uint32_t pin_num, uint32_t flags)
{
	chipc_gpio_pin_mode	mode;
	int			error;

	if (!FUNC1(pin_num))
		return (EINVAL);

	/* Verify flag compatibility and determine the pin mode */
	if ((error = FUNC2(sc, pin_num, flags, &mode)))
		return (error);

	/* Apply the mode-specific changes */
	switch (mode) {
	case CC_GPIO_PIN_INPUT:
		FUNC0(update, pin_num, pullup, false);
		FUNC0(update, pin_num, pulldown, false);
		FUNC0(update, pin_num, out, false);
		FUNC0(update, pin_num, outen, false);
		FUNC0(update, pin_num, timeroutmask, false);
		FUNC0(update, pin_num, ctrl, false);

		if (flags & GPIO_PIN_PULLUP) {
			FUNC0(update, pin_num, pullup, true);
		} else if (flags & GPIO_PIN_PULLDOWN) {
			FUNC0(update, pin_num, pulldown, true);
		}

		return (0);

	case CC_GPIO_PIN_OUTPUT:
		FUNC0(update, pin_num, pullup, false);
		FUNC0(update, pin_num, pulldown, false);
		FUNC0(update, pin_num, outen, true);
		FUNC0(update, pin_num, timeroutmask, false);
		FUNC0(update, pin_num, ctrl, false);

		if (flags & GPIO_PIN_PRESET_HIGH) {
			FUNC0(update, pin_num, out, true);
		} else if (flags & GPIO_PIN_PRESET_LOW) {
			FUNC0(update, pin_num, out, false);
		}

		if (flags & GPIO_PIN_PULSATE)
			FUNC0(update, pin_num, timeroutmask, true);

		return (0);

	case CC_GPIO_PIN_TRISTATE:
		FUNC0(update, pin_num, pullup, false);
		FUNC0(update, pin_num, pulldown, false);
		FUNC0(update, pin_num, out, false);
		FUNC0(update, pin_num, outen, false);
		FUNC0(update, pin_num, timeroutmask, false);
		FUNC0(update, pin_num, ctrl, true);

		if (flags & GPIO_PIN_OUTPUT)
			FUNC0(update, pin_num, outen, true);

		return (0);
	}

	FUNC3(sc->dev, "unknown pin mode %d\n", mode);
	return (EINVAL);
}
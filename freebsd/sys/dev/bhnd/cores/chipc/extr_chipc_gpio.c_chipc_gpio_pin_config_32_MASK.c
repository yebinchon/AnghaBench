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
typedef  size_t uint32_t ;
struct chipc_gpio_update {int dummy; } ;
struct chipc_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct chipc_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct chipc_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (size_t,size_t) ; 
 int EINVAL ; 
 size_t GPIO_PIN_INPUT ; 
 size_t GPIO_PIN_OUTPUT ; 
 int FUNC3 (struct chipc_gpio_softc*,struct chipc_gpio_update*) ; 
 int FUNC4 (struct chipc_gpio_softc*,struct chipc_gpio_update*,size_t,size_t) ; 
 struct chipc_gpio_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct chipc_gpio_update*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC7(device_t dev, uint32_t first_pin, uint32_t num_pins,
    uint32_t *pin_flags)
{
	struct chipc_gpio_softc		*sc;
	struct chipc_gpio_update	 upd;
	int				 error;
	
	sc = FUNC5(dev);

	if (!FUNC2(first_pin, num_pins))
		return (EINVAL);

	/* Produce an update descriptor */
	FUNC6(&upd, 0, sizeof(upd));
	for (uint32_t i = 0; i < num_pins; i++) {
		uint32_t pin, flags;

		pin = first_pin + i;
		flags = pin_flags[i];

		/* As per the gpio_config_32 API documentation, any pins for
		 * which neither GPIO_PIN_OUTPUT or GPIO_PIN_INPUT are set
		 * should be ignored and left unmodified */
		if ((flags & (GPIO_PIN_OUTPUT|GPIO_PIN_INPUT)) == 0)
			continue;

		if ((error = FUNC4(sc, &upd, pin, flags)))
			return (error);
	}

	/* Commit the update */
	FUNC0(sc);
	error = FUNC3(sc, &upd);
	FUNC1(sc);

	return (error);
}
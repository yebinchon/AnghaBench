#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct regnode_fixed_sc {TYPE_2__* param; scalar_t__ gpio_open_drain; TYPE_1__* gpio_entry; } ;
struct regnode {int dummy; } ;
struct gpiobus_pin {int /*<<< orphan*/  pin; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  enable_active_high; scalar_t__ always_on; scalar_t__ boot_on; } ;
struct TYPE_3__ {struct gpiobus_pin gpio_pin; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_PIN_OPENDRAIN ; 
 int /*<<< orphan*/  GPIO_PIN_OUTPUT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regnode*) ; 
 struct regnode_fixed_sc* FUNC4 (struct regnode*) ; 
 TYPE_2__* FUNC5 (struct regnode*) ; 

__attribute__((used)) static int
FUNC6(struct regnode *regnode)
{
	device_t dev;
	struct regnode_fixed_sc *sc;
	struct gpiobus_pin *pin;
	uint32_t flags;
	int rv;

	sc = FUNC4(regnode);
	dev = FUNC3(regnode);
	sc->param = FUNC5(regnode);
	if (sc->gpio_entry == NULL)
		return (0);
	pin = &sc->gpio_entry->gpio_pin;

	flags = GPIO_PIN_OUTPUT;
	if (sc->gpio_open_drain)
		flags |= GPIO_PIN_OPENDRAIN;
	if (sc->param->boot_on || sc->param->always_on) {
		rv = FUNC0(pin->dev, pin->pin, sc->param->enable_active_high);
		if (rv != 0) {
			FUNC2(dev, "Cannot set GPIO pin: %d\n",
			    pin->pin);
			return (rv);
		}
	}

	rv = FUNC1(pin->dev, pin->pin, flags);
	if (rv != 0) {
		FUNC2(dev, "Cannot configure GPIO pin: %d\n", pin->pin);
		return (rv);
	}

	return (0);
}
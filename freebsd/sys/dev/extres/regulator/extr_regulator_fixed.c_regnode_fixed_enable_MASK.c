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
struct regnode_fixed_sc {TYPE_2__* param; TYPE_1__* gpio_entry; } ;
struct regnode {int dummy; } ;
struct gpiobus_pin {int /*<<< orphan*/  pin; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int enable_delay; int /*<<< orphan*/  enable_active_high; } ;
struct TYPE_3__ {int enable_cnt; scalar_t__ always_on; struct gpiobus_pin gpio_pin; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct regnode*) ; 
 struct regnode_fixed_sc* FUNC4 (struct regnode*) ; 

__attribute__((used)) static int
FUNC5(struct regnode *regnode, bool enable, int *udelay)
{
	device_t dev;
	struct regnode_fixed_sc *sc;
	struct gpiobus_pin *pin;
	int rv;

	sc = FUNC4(regnode);
	dev = FUNC3(regnode);

	*udelay = 0;
	if (sc->gpio_entry == NULL)
		return (0);
	pin = &sc->gpio_entry->gpio_pin;
	if (enable) {
		sc->gpio_entry->enable_cnt++;
		if (sc->gpio_entry->enable_cnt > 1)
			return (0);
	} else {
		FUNC1(sc->gpio_entry->enable_cnt > 0,
		    ("Invalid enable count"));
		sc->gpio_entry->enable_cnt--;
		if (sc->gpio_entry->enable_cnt >= 1)
			return (0);
	}
	if (sc->gpio_entry->always_on && !enable)
		return (0);
	if (!sc->param->enable_active_high)
		enable = !enable;
	rv = FUNC0(pin->dev, pin->pin, enable);
	if (rv != 0) {
		FUNC2(dev, "Cannot set GPIO pin: %d\n", pin->pin);
		return (rv);
	}
	*udelay = sc->param->enable_delay;
	return (0);
}
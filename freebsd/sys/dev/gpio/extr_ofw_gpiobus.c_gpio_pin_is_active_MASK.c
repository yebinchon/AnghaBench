#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  TYPE_1__* gpio_pin_t ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  pin; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int GPIO_ACTIVE_LOW ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

int
FUNC2(gpio_pin_t pin, bool *active)
{
	int rv;
	uint32_t tmp;

	FUNC1(pin != NULL, ("GPIO pin is NULL."));
	FUNC1(pin->dev != NULL, ("GPIO pin device is NULL."));
	rv = FUNC0(pin->dev, pin->pin, &tmp);
	if (rv  != 0) {
		return (rv);
	}

	if (pin->flags & GPIO_ACTIVE_LOW)
		*active = tmp == 0;
	else
		*active = tmp != 0;
	return (0);
}
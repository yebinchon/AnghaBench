#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* gpio_pin_t ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_4__ {int /*<<< orphan*/  pin; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(gpio_pin_t gpio)
{
	device_t busdev;

	if (gpio == NULL)
		return;

	FUNC1(gpio->dev != NULL, ("invalid pin state"));

	busdev = FUNC0(gpio->dev);
	if (busdev != NULL)
		FUNC3(busdev, gpio->pin);

	/* XXXX Unreserve pin. */
	FUNC2(gpio, M_DEVBUF);
}
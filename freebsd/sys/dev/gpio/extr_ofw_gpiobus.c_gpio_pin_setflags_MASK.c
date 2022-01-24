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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* gpio_pin_t ;
struct TYPE_3__ {int /*<<< orphan*/  pin; int /*<<< orphan*/ * dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

int
FUNC2(gpio_pin_t pin, uint32_t flags)
{
	int rv;

	FUNC1(pin != NULL, ("GPIO pin is NULL."));
	FUNC1(pin->dev != NULL, ("GPIO pin device is NULL."));

	rv = FUNC0(pin->dev, pin->pin, flags);
	return (rv);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct rcc_gpio_softc {scalar_t__ sc_gpio_npins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIOMAXNAME ; 
 struct rcc_gpio_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* rcc_pins ; 

__attribute__((used)) static int
FUNC2(device_t dev, uint32_t pin, char *name)
{
	struct rcc_gpio_softc *sc;

	sc = FUNC0(dev);
	if (pin >= sc->sc_gpio_npins)
		return (EINVAL);

	FUNC1(name, rcc_pins[pin].name, GPIOMAXNAME);

	return (0);
}
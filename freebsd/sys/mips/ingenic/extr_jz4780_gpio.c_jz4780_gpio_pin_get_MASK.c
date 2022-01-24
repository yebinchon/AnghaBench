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
typedef  unsigned int uint32_t ;
struct jz4780_gpio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct jz4780_gpio_softc*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_gpio_softc*) ; 
 unsigned int JZ4780_GPIO_PINS ; 
 int /*<<< orphan*/  FUNC2 (struct jz4780_gpio_softc*) ; 
 int /*<<< orphan*/  JZ_GPIO_PIN ; 
 struct jz4780_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, unsigned int *val)
{
	struct jz4780_gpio_softc *sc;
	uint32_t data, mask;

	if (pin >= JZ4780_GPIO_PINS)
		return (EINVAL);

	mask = (1u << pin);
	sc = FUNC3(dev);
	FUNC1(sc);
	data = FUNC0(sc, JZ_GPIO_PIN);
	FUNC2(sc);
	*val = (data & mask) ? 1 : 0;

	return (0);
}
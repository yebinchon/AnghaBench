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
typedef  size_t uint32_t ;
struct mtk_gpio_softc {size_t num_pins; TYPE_1__* pins; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int pin_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int GPIO_PIN_OUTPUT ; 
 int /*<<< orphan*/  GPIO_PIOTOG ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_gpio_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 struct mtk_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin)
{
	struct mtk_gpio_softc *sc;
	int ret;

	sc = FUNC3(dev);
	ret = 0;

	if (pin >= sc->num_pins)
		return (EINVAL);

	FUNC0(sc);
	if (!(sc->pins[pin].pin_flags & GPIO_PIN_OUTPUT)) {
		ret = EINVAL;
		goto out;
	}
	FUNC2(sc, GPIO_PIOTOG, (1u << pin));

out:
	FUNC1(sc);

	return (ret);
}
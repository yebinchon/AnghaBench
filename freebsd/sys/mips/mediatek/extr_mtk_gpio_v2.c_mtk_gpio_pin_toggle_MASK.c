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
 int /*<<< orphan*/  FUNC0 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct mtk_gpio_softc*) ; 
 size_t FUNC5 (struct mtk_gpio_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mtk_gpio_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 struct mtk_gpio_softc* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev, uint32_t pin)
{
	struct mtk_gpio_softc *sc;
	uint32_t val;
	int ret;

	sc = FUNC7(dev);
	ret = 0;

	if (pin >= sc->num_pins)
		return (EINVAL);

	FUNC3(sc);
	if(!(sc->pins[pin].pin_flags & GPIO_PIN_OUTPUT)) {
		ret = EINVAL;
		goto out;
	}
	val = FUNC5(sc, FUNC0(sc));
	val &= (1u << pin);
	if (val)
		FUNC6(sc, FUNC1(sc), (1u << pin));
	else
		FUNC6(sc, FUNC2(sc), (1u << pin));

out:
	FUNC4(sc);

	return (ret);
}
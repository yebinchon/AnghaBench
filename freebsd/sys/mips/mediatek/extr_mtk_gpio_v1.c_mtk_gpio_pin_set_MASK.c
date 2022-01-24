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
typedef  scalar_t__ uint32_t ;
struct mtk_gpio_softc {scalar_t__ num_pins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPIO_PIORESET ; 
 int /*<<< orphan*/  GPIO_PIOSET ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_gpio_softc*,int /*<<< orphan*/ ,unsigned int) ; 
 struct mtk_gpio_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, uint32_t pin, unsigned int value)
{
	struct mtk_gpio_softc *sc;
	int ret;

	sc = FUNC3(dev);
	ret = 0;

	if (pin >= sc->num_pins)
		return (EINVAL);

	FUNC0(sc);
	if (value)
		FUNC2(sc, GPIO_PIOSET, (1u << pin));
	else
		FUNC2(sc, GPIO_PIORESET, (1u << pin));
	FUNC1(sc);

	return (ret);
}
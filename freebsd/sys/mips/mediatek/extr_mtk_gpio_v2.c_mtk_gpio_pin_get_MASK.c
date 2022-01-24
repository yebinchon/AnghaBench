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
struct mtk_gpio_softc {unsigned int num_pins; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct mtk_gpio_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_gpio_softc*) ; 
 unsigned int FUNC3 (struct mtk_gpio_softc*,int /*<<< orphan*/ ) ; 
 struct mtk_gpio_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, uint32_t pin, unsigned int *val)
{
	struct mtk_gpio_softc *sc;
	uint32_t data;
	int ret;

	sc = FUNC4(dev);
	ret = 0;

	if (pin >= sc->num_pins)
		return (EINVAL);

	FUNC1(sc);
	data = FUNC3(sc, FUNC0(sc));
	*val = (data & (1u << pin)) ? 1 : 0;
	FUNC2(sc);

	return (ret);
}
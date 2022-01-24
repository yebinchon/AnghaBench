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
typedef  int /*<<< orphan*/  uint32_t ;
struct bwi_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BWI_PCIM_GPIO_PLL_PWR_OFF ; 
 int /*<<< orphan*/  BWI_PCIM_GPIO_PWR_ON ; 
 int /*<<< orphan*/  BWI_PCIR_GPIO_ENABLE ; 
 int /*<<< orphan*/  BWI_PCIR_GPIO_IN ; 
 int /*<<< orphan*/  BWI_PCIR_GPIO_OUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct bwi_softc *sc, int with_pll)
{
	uint32_t gpio_out, gpio_en;

	FUNC0(sc->sc_dev, BWI_PCIR_GPIO_IN, 4); /* dummy read */
	gpio_out = FUNC0(sc->sc_dev, BWI_PCIR_GPIO_OUT, 4);
	gpio_en = FUNC0(sc->sc_dev, BWI_PCIR_GPIO_ENABLE, 4);

	gpio_out &= ~BWI_PCIM_GPIO_PWR_ON;
	gpio_en |= BWI_PCIM_GPIO_PWR_ON;
	if (with_pll) {
		gpio_out |= BWI_PCIM_GPIO_PLL_PWR_OFF;
		gpio_en |= BWI_PCIM_GPIO_PLL_PWR_OFF;
	}

	FUNC1(sc->sc_dev, BWI_PCIR_GPIO_OUT, gpio_out, 4);
	FUNC1(sc->sc_dev, BWI_PCIR_GPIO_ENABLE, gpio_en, 4);
	return 0;
}
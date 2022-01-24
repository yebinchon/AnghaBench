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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct bwi_softc {int /*<<< orphan*/  sc_dev; } ;

/* Variables and functions */
 int BWI_PCIM_GPIO_PLL_PWR_OFF ; 
 int BWI_PCIM_GPIO_PWR_ON ; 
 int /*<<< orphan*/  BWI_PCIR_GPIO_ENABLE ; 
 int /*<<< orphan*/  BWI_PCIR_GPIO_IN ; 
 int /*<<< orphan*/  BWI_PCIR_GPIO_OUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCIM_STATUS_STABORT ; 
 int /*<<< orphan*/  PCIR_STATUS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC3(struct bwi_softc *sc, int with_pll)
{
	uint32_t gpio_in, gpio_out, gpio_en;
	uint16_t status;

	gpio_in = FUNC1(sc->sc_dev, BWI_PCIR_GPIO_IN, 4);
	if (gpio_in & BWI_PCIM_GPIO_PWR_ON)
		goto back;

	gpio_out = FUNC1(sc->sc_dev, BWI_PCIR_GPIO_OUT, 4);
	gpio_en = FUNC1(sc->sc_dev, BWI_PCIR_GPIO_ENABLE, 4);

	gpio_out |= BWI_PCIM_GPIO_PWR_ON;
	gpio_en |= BWI_PCIM_GPIO_PWR_ON;
	if (with_pll) {
		/* Turn off PLL first */
		gpio_out |= BWI_PCIM_GPIO_PLL_PWR_OFF;
		gpio_en |= BWI_PCIM_GPIO_PLL_PWR_OFF;
	}

	FUNC2(sc->sc_dev, BWI_PCIR_GPIO_OUT, gpio_out, 4);
	FUNC2(sc->sc_dev, BWI_PCIR_GPIO_ENABLE, gpio_en, 4);
	FUNC0(1000);

	if (with_pll) {
		/* Turn on PLL */
		gpio_out &= ~BWI_PCIM_GPIO_PLL_PWR_OFF;
		FUNC2(sc->sc_dev, BWI_PCIR_GPIO_OUT, gpio_out, 4);
		FUNC0(5000);
	}

back:
	/* Clear "Signaled Target Abort" */
	status = FUNC1(sc->sc_dev, PCIR_STATUS, 2);
	status &= ~PCIM_STATUS_STABORT;
	FUNC2(sc->sc_dev, PCIR_STATUS, status, 2);
}
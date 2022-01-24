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
struct ath_softc {scalar_t__ sc_ledpin; scalar_t__ sc_led_pwr_pin; scalar_t__ sc_led_net_pin; int /*<<< orphan*/  sc_ah; scalar_t__ sc_hardled; int /*<<< orphan*/  sc_ledon; scalar_t__ sc_softled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_softc*) ; 
 int /*<<< orphan*/  HAL_GPIO_OUTPUT_MUX_AS_OUTPUT ; 
 int /*<<< orphan*/  HAL_GPIO_OUTPUT_MUX_MAC_NETWORK_LED ; 
 int /*<<< orphan*/  HAL_GPIO_OUTPUT_MUX_MAC_POWER_LED ; 
 int /*<<< orphan*/  HAL_PM_AWAKE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_softc*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct ath_softc *sc)
{

	FUNC0(sc);
	FUNC5(sc, HAL_PM_AWAKE);
	FUNC1(sc);

	/* Software LED blinking - GPIO controlled LED */
	if (sc->sc_softled) {
		FUNC2(sc->sc_ah, sc->sc_ledpin,
		    HAL_GPIO_OUTPUT_MUX_AS_OUTPUT);
		FUNC3(sc->sc_ah, sc->sc_ledpin, !sc->sc_ledon);
	}

	/* Hardware LED blinking - MAC controlled LED */
	if (sc->sc_hardled) {
		/*
		 * Only enable each LED if required.
		 *
		 * Some NICs only have one LED connected; others may
		 * have GPIO1/GPIO2 connected to other hardware.
		 */
		if (sc->sc_led_pwr_pin > 0)
			FUNC2(sc->sc_ah, sc->sc_led_pwr_pin,
			    HAL_GPIO_OUTPUT_MUX_MAC_POWER_LED);
		if (sc->sc_led_net_pin > 0)
			FUNC2(sc->sc_ah, sc->sc_led_net_pin,
			    HAL_GPIO_OUTPUT_MUX_MAC_NETWORK_LED);
	}

	FUNC0(sc);
	FUNC4(sc);
	FUNC1(sc);
}
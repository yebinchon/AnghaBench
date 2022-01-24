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
typedef  int /*<<< orphan*/  usb_error_t ;
struct urtw_softc {int sc_gpio_ledstate; int sc_gpio_ledinprogress; int sc_gpio_blinktime; int sc_gpio_blinkstate; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_led_ch; int /*<<< orphan*/  sc_gpio_ledon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  URTW_DEBUG_STATE ; 
#define  URTW_LED_BLINK_NORMAL 133 
#define  URTW_LED_CTL_LINK 132 
#define  URTW_LED_CTL_POWER_ON 131 
#define  URTW_LED_CTL_TX 130 
 int /*<<< orphan*/  URTW_LED_GPIO ; 
 int const URTW_LED_OFF ; 
#define  URTW_LED_ON 129 
#define  URTW_LED_POWER_ON_BLINK 128 
 int /*<<< orphan*/  USB_ERR_INVAL ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  urtw_led_ch ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static usb_error_t
FUNC5(struct urtw_softc *sc, int mode)
{

	switch (mode) {
	case URTW_LED_CTL_POWER_ON:
		sc->sc_gpio_ledstate = URTW_LED_POWER_ON_BLINK;
		break;
	case URTW_LED_CTL_TX:
		if (sc->sc_gpio_ledinprogress == 1)
			return (0);

		sc->sc_gpio_ledstate = URTW_LED_BLINK_NORMAL;
		sc->sc_gpio_blinktime = 2;
		break;
	case URTW_LED_CTL_LINK:
		sc->sc_gpio_ledstate = URTW_LED_ON;
		break;
	default:
		FUNC0(sc, URTW_DEBUG_STATE,
		    "unsupported LED mode 0x%x", mode);
		return (USB_ERR_INVAL);
	}

	switch (sc->sc_gpio_ledstate) {
	case URTW_LED_ON:
		if (sc->sc_gpio_ledinprogress != 0)
			break;
		FUNC2(sc, URTW_LED_GPIO);
		break;
	case URTW_LED_BLINK_NORMAL:
		if (sc->sc_gpio_ledinprogress != 0)
			break;
		sc->sc_gpio_ledinprogress = 1;
		sc->sc_gpio_blinkstate = (sc->sc_gpio_ledon != 0) ?
			URTW_LED_OFF : URTW_LED_ON;
		FUNC3(&sc->sc_led_ch, hz, urtw_led_ch, sc);
		break;
	case URTW_LED_POWER_ON_BLINK:
		FUNC2(sc, URTW_LED_GPIO);
		FUNC4(&sc->sc_mtx, 100);
		FUNC1(sc, URTW_LED_GPIO);
		break;
	default:
		FUNC0(sc, URTW_DEBUG_STATE,
		    "unknown LED status 0x%x", sc->sc_gpio_ledstate);
		return (USB_ERR_INVAL);
	}
	return (0);
}
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
struct urtw_softc {int sc_gpio_ledpin; int sc_gpio_ledon; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  URTW_DEBUG_STATE ; 
 int /*<<< orphan*/  URTW_GPIO ; 
 int /*<<< orphan*/  URTW_GP_ENABLE ; 
 int URTW_LED_GPIO ; 
#define  URTW_LED_PIN_GPIO0 128 
 int /*<<< orphan*/  USB_ERR_INVAL ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static usb_error_t
FUNC2(struct urtw_softc *sc, int type)
{
	usb_error_t error;

	if (type == URTW_LED_GPIO) {
		switch (sc->sc_gpio_ledpin) {
		case URTW_LED_PIN_GPIO0:
			FUNC1(sc, URTW_GPIO, 0x01);
			FUNC1(sc, URTW_GP_ENABLE, 0x00);
			break;
		default:
			FUNC0(sc, URTW_DEBUG_STATE,
			    "unsupported LED PIN type 0x%x",
			    sc->sc_gpio_ledpin);
			error = USB_ERR_INVAL;
			goto fail;
		}
	} else {
		FUNC0(sc, URTW_DEBUG_STATE,
		    "unsupported LED type 0x%x", type);
		error = USB_ERR_INVAL;
		goto fail;
	}

	sc->sc_gpio_ledon = 1;
fail:
	return (error);
}
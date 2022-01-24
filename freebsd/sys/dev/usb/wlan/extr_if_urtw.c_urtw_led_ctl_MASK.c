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
struct urtw_softc {int sc_strategy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct urtw_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  URTW_DEBUG_STATE ; 
#define  URTW_SW_LED_MODE0 131 
#define  URTW_SW_LED_MODE1 130 
#define  URTW_SW_LED_MODE2 129 
#define  URTW_SW_LED_MODE3 128 
 int /*<<< orphan*/  USB_ERR_INVAL ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct urtw_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct urtw_softc*,int) ; 

__attribute__((used)) static usb_error_t
FUNC5(struct urtw_softc *sc, int mode)
{
	usb_error_t error = 0;

	switch (sc->sc_strategy) {
	case URTW_SW_LED_MODE0:
		error = FUNC1(sc, mode);
		break;
	case URTW_SW_LED_MODE1:
		error = FUNC2(sc, mode);
		break;
	case URTW_SW_LED_MODE2:
		error = FUNC3(sc, mode);
		break;
	case URTW_SW_LED_MODE3:
		error = FUNC4(sc, mode);
		break;
	default:
		FUNC0(sc, URTW_DEBUG_STATE,
		    "unsupported LED mode %d\n", sc->sc_strategy);
		error = USB_ERR_INVAL;
		break;
	}

	return (error);
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
struct usb_xfer {int dummy; } ;
struct g_keyboard_softc {int sc_state; TYPE_1__* sc_data; int /*<<< orphan*/  sc_mode; } ;
struct TYPE_3__ {void** keycode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int G_KEYBOARD_MAX_STRLEN ; 
 int /*<<< orphan*/  G_KEYBOARD_MODE_PATTERN ; 
 int /*<<< orphan*/  G_KEYBOARD_MODE_SILENT ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 void* FUNC2 (struct g_keyboard_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*,int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 struct g_keyboard_softc* FUNC9 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct usb_xfer *xfer, usb_error_t error)
{
	struct g_keyboard_softc *sc = FUNC9(xfer);
	int actlen;
	int aframes;

	FUNC10(xfer, &actlen, NULL, &aframes, NULL);

	FUNC0("st=%d aframes=%d actlen=%d bytes\n",
	    FUNC1(xfer), aframes, actlen);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		break;

	case USB_ST_SETUP:
tr_setup:
		if (sc->sc_mode == G_KEYBOARD_MODE_SILENT) {
			FUNC3(&sc->sc_data, 0, sizeof(sc->sc_data));
			FUNC6(xfer, 0, &sc->sc_data[0], sizeof(sc->sc_data[0]));
			FUNC6(xfer, 1, &sc->sc_data[1], sizeof(sc->sc_data[1]));
			FUNC7(xfer, 2);
			FUNC5(xfer);

		} else if (sc->sc_mode == G_KEYBOARD_MODE_PATTERN) {

			FUNC3(&sc->sc_data, 0, sizeof(sc->sc_data));

			if ((sc->sc_state < 0) || (sc->sc_state >= G_KEYBOARD_MAX_STRLEN))
				sc->sc_state = 0;

			switch (sc->sc_state % 6) {
			case 0:
				sc->sc_data[0].keycode[0] =
				    FUNC2(sc, sc->sc_state + 0);
			case 1:
				sc->sc_data[0].keycode[1] =
				    FUNC2(sc, sc->sc_state + 1);
			case 2:
				sc->sc_data[0].keycode[2] =
				    FUNC2(sc, sc->sc_state + 2);
			case 3:
				sc->sc_data[0].keycode[3] =
				    FUNC2(sc, sc->sc_state + 3);
			case 4:
				sc->sc_data[0].keycode[4] =
				    FUNC2(sc, sc->sc_state + 4);
			default:
				sc->sc_data[0].keycode[5] =
				    FUNC2(sc, sc->sc_state + 5);
			}

			sc->sc_state++;

			FUNC6(xfer, 0, &sc->sc_data[0], sizeof(sc->sc_data[0]));
			FUNC6(xfer, 1, &sc->sc_data[1], sizeof(sc->sc_data[1]));
			FUNC7(xfer, 2);
			FUNC5(xfer);
		}
		break;

	default:			/* Error */
		FUNC0("error=%s\n", FUNC4(error));

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC8(xfer);
			goto tr_setup;
		}
		break;
	}
}
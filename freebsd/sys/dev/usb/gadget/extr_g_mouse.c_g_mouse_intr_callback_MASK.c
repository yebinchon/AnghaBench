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
typedef  int /*<<< orphan*/  usb_error_t ;
struct usb_xfer {int dummy; } ;
struct TYPE_2__ {int dx; int dy; int /*<<< orphan*/  buttons; } ;
struct g_mouse_softc {int sc_tick; int sc_radius; int sc_curr_y_state; int sc_curr_x_state; int sc_last_x_state; int sc_last_y_state; TYPE_1__ sc_data; int /*<<< orphan*/  sc_mode; int /*<<< orphan*/  sc_do_button_update; int /*<<< orphan*/  sc_do_cursor_update; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUT_0 ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
#define  G_MOUSE_MODE_BOX 133 
#define  G_MOUSE_MODE_CIRCLE 132 
#define  G_MOUSE_MODE_SILENT 131 
#define  G_MOUSE_MODE_SPIRAL 130 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer*,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct g_mouse_softc* FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer, usb_error_t error)
{
	struct g_mouse_softc *sc = FUNC7(xfer);
	int actlen;
	int aframes;
	int dx;
	int dy;
	int radius;

	FUNC8(xfer, &actlen, NULL, &aframes, NULL);

	FUNC0("st=%d aframes=%d actlen=%d bytes\n",
	    FUNC1(xfer), aframes, actlen);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		if (!(sc->sc_do_cursor_update || sc->sc_do_button_update))
			break;

	case USB_ST_SETUP:
tr_setup:

	  if (sc->sc_do_cursor_update) {
		sc->sc_do_cursor_update = 0;
		sc->sc_tick += 80;
		if ((sc->sc_tick < 0) || (sc->sc_tick > 7999))
			sc->sc_tick = 0;
	  }

	  if (sc->sc_do_button_update) {
			sc->sc_do_button_update = 0;
			sc->sc_data.buttons ^= BUT_0;
	  }

	  radius = sc->sc_radius;

		switch (sc->sc_mode) {
		case G_MOUSE_MODE_SILENT:
			sc->sc_data.buttons = 0;
			break;
		case G_MOUSE_MODE_SPIRAL:
			radius = (radius * (8000-sc->sc_tick)) / 8000;
		case G_MOUSE_MODE_CIRCLE:
			/* TODO */
			sc->sc_curr_y_state = 0;
			sc->sc_curr_x_state = 0;
			break;
		case G_MOUSE_MODE_BOX:
			if (sc->sc_tick < 2000) {
				sc->sc_curr_x_state = (sc->sc_tick * radius) / 2000;
				sc->sc_curr_y_state = 0;
			} else if (sc->sc_tick < 4000) {
				sc->sc_curr_x_state = radius;
				sc->sc_curr_y_state = -(((sc->sc_tick - 2000) * radius) / 2000);
			} else if (sc->sc_tick < 6000) {
				sc->sc_curr_x_state = radius - (((sc->sc_tick - 4000) * radius) / 2000);
				sc->sc_curr_y_state = -radius;
			} else {
				sc->sc_curr_x_state = 0;
				sc->sc_curr_y_state = -radius + (((sc->sc_tick - 6000) * radius) / 2000);
			}
			break;
		default:
			break;
		}

		dx = sc->sc_curr_x_state - sc->sc_last_x_state;
		dy = sc->sc_curr_y_state - sc->sc_last_y_state;

		if (dx < -63)
		  dx = -63;
		else if (dx > 63)
		  dx = 63;

		if (dy < -63)
		  dy = -63;
		else if (dy > 63)
		  dy = 63;

		sc->sc_last_x_state += dx;
		sc->sc_last_y_state += dy;

		sc->sc_data.dx = dx;
		sc->sc_data.dy = dy;

		FUNC4(xfer, 0, &sc->sc_data, sizeof(sc->sc_data));
		FUNC5(xfer, 1);
		FUNC3(xfer);
		break;

	default:			/* Error */
		FUNC0("error=%s\n", FUNC2(error));

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC6(xfer);
			goto tr_setup;
		}
		break;
	}
}
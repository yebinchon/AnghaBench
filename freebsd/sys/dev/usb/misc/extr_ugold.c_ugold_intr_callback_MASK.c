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
typedef  int uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct ugold_softc {int sc_num_sensors; int* sc_valid; int /*<<< orphan*/ * sc_calib; int /*<<< orphan*/ * sc_sensor; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (int,int) ; 
#define  UGOLD_CMD_DATA 131 
#define  UGOLD_CMD_INIT 130 
 size_t UGOLD_INNER ; 
 int UGOLD_MAX_SENSORS ; 
 size_t UGOLD_OUTER ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC2 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_page_cache*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*) ; 
 struct ugold_softc* FUNC11 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct usb_xfer *xfer, usb_error_t error)
{
	struct ugold_softc *sc = FUNC11(xfer);
	struct usb_page_cache *pc;
	uint8_t buf[8];
	int temp;
	int len;

	FUNC12(xfer, &len, NULL, NULL, NULL);

	switch (FUNC2(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC3(buf, 0, sizeof(buf));

		pc = FUNC7(xfer, 0);
		FUNC5(pc, 0, buf, FUNC1(len, sizeof(buf)));

		switch (buf[0]) {
		case UGOLD_CMD_INIT:
			if (sc->sc_num_sensors)
				break;

			sc->sc_num_sensors = FUNC1(buf[1], UGOLD_MAX_SENSORS) /* XXX */ ;

			FUNC0("%d sensor%s type ds75/12bit (temperature)\n",
			    sc->sc_num_sensors, (sc->sc_num_sensors == 1) ? "" : "s");
			break;
		case UGOLD_CMD_DATA:
			switch (buf[1]) {
			case 4:
				temp = FUNC4(buf[4], buf[5]);
				sc->sc_sensor[UGOLD_OUTER] = temp + sc->sc_calib[UGOLD_OUTER];
				sc->sc_valid[UGOLD_OUTER] = 1;
				/* FALLTHROUGH */
			case 2:
				temp = FUNC4(buf[2], buf[3]);
				sc->sc_sensor[UGOLD_INNER] = temp + sc->sc_calib[UGOLD_INNER];
				sc->sc_valid[UGOLD_INNER] = 1;
				break;
			default:
				FUNC0("invalid data length (%d bytes)\n", buf[1]);
			}
			break;
		default:
			FUNC0("unknown command 0x%02x\n", buf[0]);
			break;
		}
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		FUNC9(xfer, 0, FUNC8(xfer));
		FUNC6(xfer);
		break;
	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try clear stall first */
			FUNC10(xfer);
			goto tr_setup;
		}
		break;
	}
}
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
typedef  union ccb {int dummy; } ccb ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int* wLength; int /*<<< orphan*/ * wIndex; int /*<<< orphan*/  wValue; int /*<<< orphan*/  bRequest; int /*<<< orphan*/  bmRequestType; } ;
struct TYPE_2__ {int cmd_len; int /*<<< orphan*/  data_len; int /*<<< orphan*/  (* callback ) (struct umass_softc*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;union ccb* ccb; struct usb_device_request* cmd_data; int /*<<< orphan*/  dir; } ;
struct umass_softc {int /*<<< orphan*/  sc_last_xfer_index; TYPE_1__ sc_transfer; int /*<<< orphan*/  sc_iface_no; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIR_IN ; 
 int /*<<< orphan*/  DIR_NONE ; 
 int /*<<< orphan*/  STATUS_CMD_UNKNOWN ; 
 int /*<<< orphan*/  UDMASS_CBI ; 
 int /*<<< orphan*/  UMASS_T_CBI_COMMAND ; 
 int /*<<< orphan*/  UMASS_T_CBI_DATA_READ ; 
 int /*<<< orphan*/  UMASS_T_CBI_DATA_WRITE ; 
 int /*<<< orphan*/  UR_CBI_ADSC ; 
 int /*<<< orphan*/  USB_ERR_STALLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UT_WRITE_CLASS_INTERFACE ; 
 int /*<<< orphan*/  FUNC3 (struct umass_softc*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct umass_softc*,union ccb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct umass_softc*,struct usb_device_request*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct umass_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct umass_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC11 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_xfer*,int) ; 
 struct umass_softc* FUNC14 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC15(struct usb_xfer *xfer, usb_error_t error)
{
	struct umass_softc *sc = FUNC14(xfer);
	union ccb *ccb = sc->sc_transfer.ccb;
	struct usb_device_request req;
	struct usb_page_cache *pc;

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		if (sc->sc_transfer.dir == DIR_NONE) {
			FUNC6(sc);
		} else {
			FUNC8
			    (sc, (sc->sc_transfer.dir == DIR_IN) ?
			    UMASS_T_CBI_DATA_READ : UMASS_T_CBI_DATA_WRITE);
		}
		break;

	case USB_ST_SETUP:

		if (ccb) {

			/*
		         * do a CBI transfer with cmd_len bytes from
		         * cmd_data, possibly a data phase of data_len
		         * bytes from/to the device and finally a status
		         * read phase.
		         */

			req.bmRequestType = UT_WRITE_CLASS_INTERFACE;
			req.bRequest = UR_CBI_ADSC;
			FUNC2(req.wValue, 0);
			req.wIndex[0] = sc->sc_iface_no;
			req.wIndex[1] = 0;
			req.wLength[0] = sc->sc_transfer.cmd_len;
			req.wLength[1] = 0;

			pc = FUNC11(xfer, 0);
			FUNC9(pc, 0, &req, sizeof(req));
			pc = FUNC11(xfer, 1);
			FUNC9(pc, 0, sc->sc_transfer.cmd_data,
			    sc->sc_transfer.cmd_len);

			FUNC12(xfer, 0, sizeof(req));
			FUNC12(xfer, 1, sc->sc_transfer.cmd_len);
			FUNC13(xfer,
			    sc->sc_transfer.cmd_len ? 2 : 1);

			FUNC0(UDMASS_CBI,
			    FUNC5(sc,
			    sc->sc_transfer.cmd_data,
			    sc->sc_transfer.cmd_len));

			FUNC10(xfer);
		}
		break;

	default:			/* Error */
		/*
		 * STALL on the control pipe can be result of the command error.
		 * Attempt to clear this STALL same as for bulk pipe also
		 * results in command completion interrupt, but ASC/ASCQ there
		 * look like not always valid, so don't bother about it.
		 */
		if ((error == USB_ERR_STALLED) ||
		    (sc->sc_transfer.callback == &umass_cam_cb)) {
			sc->sc_transfer.ccb = NULL;
			(sc->sc_transfer.callback)
			    (sc, ccb, sc->sc_transfer.data_len,
			    STATUS_CMD_UNKNOWN);
		} else {
			FUNC7(xfer, error);
			/* skip reset */
			sc->sc_last_xfer_index = UMASS_T_CBI_COMMAND;
		}
		break;
	}
}
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
struct usb_xfer {int dummy; } ;
struct udl_softc {int /*<<< orphan*/  sc_cv; int /*<<< orphan*/  sc_cmd_buf_free; int /*<<< orphan*/  sc_cmd_buf_pending; } ;
struct udl_cmd_head {int dummy; } ;
struct udl_cmd_buf {int /*<<< orphan*/  off; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct udl_cmd_head*,int /*<<< orphan*/ ) ; 
 struct udl_cmd_buf* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct udl_cmd_head*,struct udl_cmd_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct udl_cmd_buf*,int /*<<< orphan*/ ) ; 
 unsigned int UDL_CMD_MAX_FRAMES ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC4 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  entry ; 
 struct udl_cmd_buf* FUNC6 (struct udl_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 struct udl_cmd_head* FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*) ; 
 struct udl_softc* FUNC12 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC13(struct usb_xfer *xfer, usb_error_t error)
{
	struct udl_softc *sc = FUNC12(xfer);
	struct udl_cmd_head *phead = FUNC8(xfer);
	struct udl_cmd_buf *cb;
	unsigned i;

	switch (FUNC4(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC0(&sc->sc_cmd_buf_free, phead, entry);
	case USB_ST_SETUP:
tr_setup:
		for (i = 0; i != UDL_CMD_MAX_FRAMES; i++) {
			cb = FUNC1(&sc->sc_cmd_buf_pending);
			if (cb == NULL) {
				cb = FUNC6(sc);
				if (cb == NULL)
					break;
			} else {
				FUNC3(&sc->sc_cmd_buf_pending, cb, entry);
			}
			FUNC2(phead, cb, entry);
			FUNC9(xfer, i, cb->buf, cb->off);
		}
		if (i != 0) {
			FUNC10(xfer, i);
			FUNC7(xfer);
		}
		break;
	default:
		FUNC0(&sc->sc_cmd_buf_free, phead, entry);
		if (error != USB_ERR_CANCELLED) {
			/* try clear stall first */
			FUNC11(xfer);
			goto tr_setup;
		}
		break;
	}
	/* wakeup any waiters */
	FUNC5(&sc->sc_cv);
}
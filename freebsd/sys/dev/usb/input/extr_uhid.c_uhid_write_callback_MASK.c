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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_device_request {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fp; } ;
struct uhid_softc {int sc_osize; TYPE_1__ sc_fifo; int /*<<< orphan*/  sc_iface_no; int /*<<< orphan*/  sc_oid; } ;
typedef  int /*<<< orphan*/  req ;

/* Variables and functions */
 int UHID_BSIZE ; 
 int /*<<< orphan*/  UHID_OUTPUT_REPORT ; 
 size_t USB_FIFO_TX ; 
 int FUNC0 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC1 (struct usb_device_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct usb_page_cache*,int /*<<< orphan*/ ,int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_device_request*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_page_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC7 (struct usb_xfer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int) ; 
 struct uhid_softc* FUNC10 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC11(struct usb_xfer *xfer, usb_error_t error)
{
	struct uhid_softc *sc = FUNC10(xfer);
	struct usb_device_request req;
	struct usb_page_cache *pc;
	uint32_t size = sc->sc_osize;
	uint32_t actlen;
	uint8_t id;

	switch (FUNC0(xfer)) {
	case USB_ST_TRANSFERRED:
	case USB_ST_SETUP:
		/* try to extract the ID byte */
		if (sc->sc_oid) {
			pc = FUNC7(xfer, 0);
			if (FUNC2(sc->sc_fifo.fp[USB_FIFO_TX], pc,
			    0, 1, &actlen, 0)) {
				if (actlen != 1) {
					goto tr_error;
				}
				FUNC5(pc, 0, &id, 1);

			} else {
				return;
			}
			if (size) {
				size--;
			}
		} else {
			id = 0;
		}

		pc = FUNC7(xfer, 1);
		if (FUNC2(sc->sc_fifo.fp[USB_FIFO_TX], pc,
		    0, UHID_BSIZE, &actlen, 1)) {
			if (actlen != size) {
				goto tr_error;
			}
			FUNC1
			    (&req, sc->sc_iface_no,
			    UHID_OUTPUT_REPORT, id, size);

			pc = FUNC7(xfer, 0);
			FUNC4(pc, 0, &req, sizeof(req));

			FUNC8(xfer, 0, sizeof(req));
			FUNC8(xfer, 1, size);
			FUNC9(xfer, size ? 2 : 1);
			FUNC6(xfer);
		}
		return;

	default:
tr_error:
		/* bomb out */
		FUNC3(sc->sc_fifo.fp[USB_FIFO_TX]);
		return;
	}
}
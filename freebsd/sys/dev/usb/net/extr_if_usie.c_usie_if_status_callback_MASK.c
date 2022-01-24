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
typedef  int uint32_t ;
struct usie_softc {int /*<<< orphan*/  sc_if_status_task; } ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_cdc_notification {int bNotification; } ;
typedef  int /*<<< orphan*/  cdc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int UCDC_N_RESPONSE_AVAILABLE ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC2 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_cdc_notification*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_xfer*) ; 
 struct usie_softc* FUNC11 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct usb_xfer *xfer, usb_error_t error)
{
	struct usie_softc *sc = FUNC11(xfer);
	struct usb_page_cache *pc;
	struct usb_cdc_notification cdc;
	uint32_t actlen;

	FUNC12(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC2(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC1(4, "info received, actlen=%d\n", actlen);

		/* usb_cdc_notification - .data[16] */
		if (actlen < (sizeof(cdc) - 16)) {
			FUNC0("data too short %d\n", actlen);
			goto tr_setup;
		}
		pc = FUNC7(xfer, 0);
		FUNC4(pc, 0, &cdc, (sizeof(cdc) - 16));

		FUNC1(4, "bNotification=%x\n", cdc.bNotification);

		if (cdc.bNotification & UCDC_N_RESPONSE_AVAILABLE) {
			FUNC3(taskqueue_thread,
			    &sc->sc_if_status_task);
		}
		/* fall though */
	case USB_ST_SETUP:
tr_setup:
		FUNC9(xfer, 0, FUNC8(xfer));
		FUNC6(xfer);
		break;

	default:			/* Error */
		FUNC0("USB transfer error, %s\n",
		    FUNC5(error));

		if (error != USB_ERR_CANCELLED) {
			FUNC10(xfer);
			goto tr_setup;
		}
		break;
	}
}
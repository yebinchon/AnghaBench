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
typedef  size_t uint8_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct umcs7840_softc {int sc_numports; int /*<<< orphan*/  sc_dev; TYPE_1__* sc_ucom; } ;
struct TYPE_2__ {size_t sc_portno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,size_t,size_t) ; 
 size_t MCS7840_UART_ISR_INTMASK ; 
#define  MCS7840_UART_ISR_MSCHANGE 133 
 size_t MCS7840_UART_ISR_NOPENDING ; 
#define  MCS7840_UART_ISR_RXERR 132 
#define  MCS7840_UART_ISR_RXHASDATA 131 
#define  MCS7840_UART_ISR_RXTIMEOUT 130 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,int /*<<< orphan*/ ,size_t*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 struct umcs7840_softc* FUNC10 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct usb_xfer *xfer, usb_error_t error)
{
	struct umcs7840_softc *sc = FUNC10(xfer);
	struct usb_page_cache *pc;
	uint8_t buf[13];
	int actlen;
	int subunit;

	FUNC11(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		if (actlen == 5 || actlen == 13) {
			pc = FUNC6(xfer, 0);
			FUNC4(pc, 0, buf, actlen);
			/* Check status of all ports */
			for (subunit = 0; subunit < sc->sc_numports; ++subunit) {
				uint8_t pn = sc->sc_ucom[subunit].sc_portno;

				if (buf[pn] & MCS7840_UART_ISR_NOPENDING)
					continue;
				FUNC0("Port %d has pending interrupt: %02x (FIFO: %02x)\n", pn, buf[pn] & MCS7840_UART_ISR_INTMASK, buf[pn] & (~MCS7840_UART_ISR_INTMASK));
				switch (buf[pn] & MCS7840_UART_ISR_INTMASK) {
				case MCS7840_UART_ISR_RXERR:
				case MCS7840_UART_ISR_RXHASDATA:
				case MCS7840_UART_ISR_RXTIMEOUT:
				case MCS7840_UART_ISR_MSCHANGE:
					FUNC3(&sc->sc_ucom[subunit]);
					break;
				default:
					/* Do nothing */
					break;
				}
			}
		} else
			FUNC2(sc->sc_dev, "Invalid interrupt data length %d", actlen);
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		FUNC8(xfer, 0, FUNC7(xfer));
		FUNC5(xfer);
		return;

	default:			/* Error */
		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC9(xfer);
			goto tr_setup;
		}
		return;
	}
}
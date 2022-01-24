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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct usb_ether {int dummy; } ;
struct mos_softc {struct usb_ether sc_ue; } ;
struct ifnet {int dummy; } ;
struct ether_header {int dummy; } ;
typedef  int /*<<< orphan*/  rxstat ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int MOS_RXSTS_ALIGN_ERROR ; 
 int MOS_RXSTS_CRC_ERROR ; 
 int MOS_RXSTS_LARGE_FRAME ; 
 int MOS_RXSTS_SHORT_FRAME ; 
 int MOS_RXSTS_VALID ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 struct ifnet* FUNC3 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_ether*,struct usb_page_cache*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_page_cache*,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC9 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_xfer*) ; 
 struct mos_softc* FUNC13 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC15(struct usb_xfer *xfer, usb_error_t error)
{
	struct mos_softc *sc = FUNC13(xfer);
	struct usb_ether *ue = &sc->sc_ue;
	struct ifnet *ifp = FUNC3(ue);

	uint8_t rxstat = 0;
	uint32_t actlen;
	uint16_t pktlen = 0;
	struct usb_page_cache *pc;

	FUNC14(xfer, &actlen, NULL, NULL, NULL);
	pc = FUNC9(xfer, 0);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC0("actlen : %d", actlen);
		if (actlen <= 1) {
			FUNC2(ifp, IFCOUNTER_IERRORS, 1);
			goto tr_setup;
		}
		/* evaluate status byte at the end */
		FUNC6(pc, actlen - sizeof(rxstat), &rxstat,
		    sizeof(rxstat));

		if (rxstat != MOS_RXSTS_VALID) {
			FUNC0("erroneous frame received");
			if (rxstat & MOS_RXSTS_SHORT_FRAME)
				FUNC0("frame size less than 64 bytes");
			if (rxstat & MOS_RXSTS_LARGE_FRAME) {
				FUNC0("frame size larger than "
				    "1532 bytes");
			}
			if (rxstat & MOS_RXSTS_CRC_ERROR)
				FUNC0("CRC error");
			if (rxstat & MOS_RXSTS_ALIGN_ERROR)
				FUNC0("alignment error");
			FUNC2(ifp, IFCOUNTER_IERRORS, 1);
			goto tr_setup;
		}
		/* Remember the last byte was used for the status fields */
		pktlen = actlen - 1;
		if (pktlen < sizeof(struct ether_header)) {
			FUNC0("error: pktlen %d is smaller "
			    "than ether_header %zd", pktlen,
			    sizeof(struct ether_header));
			FUNC2(ifp, IFCOUNTER_IERRORS, 1);
			goto tr_setup;
		}
		FUNC4(ue, pc, 0, actlen);
		/* FALLTHROUGH */
	case USB_ST_SETUP:
tr_setup:
		FUNC11(xfer, 0, FUNC10(xfer));
		FUNC8(xfer);
		FUNC5(ue);
		return;
	default:
		FUNC0("bulk read error, %s", FUNC7(error));
		if (error != USB_ERR_CANCELLED) {
			FUNC12(xfer);
			goto tr_setup;
		}
		FUNC0("start rx %i", FUNC10(xfer));
		return;
	}
}
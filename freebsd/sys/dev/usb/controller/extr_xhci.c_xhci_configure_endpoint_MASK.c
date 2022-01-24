#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  size_t uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct xhci_trb {int dummy; } ;
struct TYPE_5__ {TYPE_1__* devs; } ;
struct xhci_softc {TYPE_2__ sc_hw; } ;
struct xhci_input_dev_ctx {TYPE_3__* ctx_ep; } ;
struct xhci_endpoint_ext {int physaddr; size_t trb_ep_mode; int /*<<< orphan*/ * page_cache; int /*<<< orphan*/  trb_ep_maxp; } ;
struct usb_page_search {struct xhci_input_dev_ctx* buffer; } ;
struct usb_endpoint_descriptor {size_t bEndpointAddress; int bmAttributes; int /*<<< orphan*/ * wMaxPacketSize; } ;
struct usb_device {size_t controller_slot_id; int speed; int /*<<< orphan*/  bus; } ;
struct TYPE_6__ {int /*<<< orphan*/  dwEpCtx4; int /*<<< orphan*/  qwEpCtx2; int /*<<< orphan*/  dwEpCtx1; int /*<<< orphan*/  dwEpCtx0; } ;
struct TYPE_4__ {int /*<<< orphan*/  input_pc; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
#define  UE_BULK 134 
#define  UE_CONTROL 133 
 size_t UE_DIR_IN ; 
#define  UE_INTERRUPT 132 
#define  UE_ISOCHRONOUS 131 
 int UE_XFERTYPE ; 
 size_t USB_EP_MODE_STREAMS ; 
 int /*<<< orphan*/  USB_ERR_BAD_BUFSIZE ; 
 int /*<<< orphan*/  USB_ERR_NO_PIPE ; 
#define  USB_SPEED_FULL 130 
#define  USB_SPEED_LOW 129 
#define  USB_SPEED_SUPER 128 
 struct xhci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (size_t) ; 
 int FUNC4 (int) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (size_t) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (size_t) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 size_t FUNC15 (size_t) ; 
 int XHCI_MAX_STREAMS ; 
 scalar_t__ XHCI_MAX_STREAMS_LOG ; 
 int XHCI_MAX_TRANSFERS ; 
 int XHCI_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_page_search*) ; 
 int /*<<< orphan*/  FUNC18 (struct xhci_softc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (struct xhci_softc*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (struct xhci_softc*,TYPE_3__*) ; 

__attribute__((used)) static usb_error_t
FUNC21(struct usb_device *udev,
    struct usb_endpoint_descriptor *edesc, struct xhci_endpoint_ext *pepext,
    uint16_t interval, uint8_t max_packet_count,
    uint8_t mult, uint8_t fps_shift, uint16_t max_packet_size,
    uint16_t max_frame_size, uint8_t ep_mode)
{
	struct usb_page_search buf_inp;
	struct xhci_softc *sc = FUNC1(udev->bus);
	struct xhci_input_dev_ctx *pinp;
	uint64_t ring_addr = pepext->physaddr;
	uint32_t temp;
	uint8_t index;
	uint8_t epno;
	uint8_t type;

	index = udev->controller_slot_id;

	FUNC17(&sc->sc_hw.devs[index].input_pc, 0, &buf_inp);

	pinp = buf_inp.buffer;

	epno = edesc->bEndpointAddress;
	type = edesc->bmAttributes & UE_XFERTYPE;

	if (type == UE_CONTROL)
		epno |= UE_DIR_IN;

	epno = FUNC15(epno);

 	if (epno == 0)
		return (USB_ERR_NO_PIPE);		/* invalid */

	if (max_packet_count == 0)
		return (USB_ERR_BAD_BUFSIZE);

	max_packet_count--;

	if (mult == 0)
		return (USB_ERR_BAD_BUFSIZE);

	/* store endpoint mode */
	pepext->trb_ep_mode = ep_mode;
	/* store bMaxPacketSize for control endpoints */
	pepext->trb_ep_maxp = edesc->wMaxPacketSize[0];
	FUNC16(pepext->page_cache);

	if (ep_mode == USB_EP_MODE_STREAMS) {
		temp = FUNC2(0) |
		    FUNC5(XHCI_MAX_STREAMS_LOG - 1) |
		    FUNC4(1);

		ring_addr += sizeof(struct xhci_trb) *
		    XHCI_MAX_TRANSFERS * XHCI_MAX_STREAMS;
	} else {
		temp = FUNC2(0) |
		    FUNC5(0) |
		    FUNC4(0);

		ring_addr |= FUNC12(1);
	}

	switch (udev->speed) {
	case USB_SPEED_FULL:
	case USB_SPEED_LOW:
		/* 1ms -> 125us */
		fps_shift += 3;
		break;
	default:
		break;
	}

	switch (type) {
	case UE_INTERRUPT:
		if (fps_shift > 3)
			fps_shift--;
		temp |= FUNC3(fps_shift);
		break;
	case UE_ISOCHRONOUS:
		temp |= FUNC3(fps_shift);

		switch (udev->speed) {
		case USB_SPEED_SUPER:
			if (mult > 3)
				mult = 3;
			temp |= FUNC6(mult - 1);
			max_packet_count /= mult;
			break;
		default:
			break;
		}
		break;
	default:
		break;
	}

	FUNC18(sc, &pinp->ctx_ep[epno - 1].dwEpCtx0, temp);

	temp =
	    FUNC9(0) |
	    FUNC10(max_packet_count) |
	    FUNC11(max_packet_size);

	/*
	 * Always enable the "three strikes and you are gone" feature
	 * except for ISOCHRONOUS endpoints. This is suggested by
	 * section 4.3.3 in the XHCI specification about device slot
	 * initialisation.
	 */
	if (type != UE_ISOCHRONOUS)
		temp |= FUNC7(3);

	switch (type) {
	case UE_CONTROL:
		temp |= FUNC8(4);
		break;
	case UE_ISOCHRONOUS:
		temp |= FUNC8(1);
		break;
	case UE_BULK:
		temp |= FUNC8(2);
		break;
	default:
		temp |= FUNC8(3);
		break;
	}

	/* check for IN direction */
	if (epno & 1)
		temp |= FUNC8(4);

	FUNC18(sc, &pinp->ctx_ep[epno - 1].dwEpCtx1, temp);
	FUNC19(sc, &pinp->ctx_ep[epno - 1].qwEpCtx2, ring_addr);

	switch (edesc->bmAttributes & UE_XFERTYPE) {
	case UE_INTERRUPT:
	case UE_ISOCHRONOUS:
		temp = FUNC14(max_frame_size) |
		    FUNC13(FUNC0(XHCI_PAGE_SIZE,
		    max_frame_size));
		break;
	case UE_CONTROL:
		temp = FUNC13(8);
		break;
	default:
		temp = FUNC13(XHCI_PAGE_SIZE);
		break;
	}

	FUNC18(sc, &pinp->ctx_ep[epno - 1].dwEpCtx4, temp);

#ifdef USB_DEBUG
	xhci_dump_endpoint(sc, &pinp->ctx_ep[epno - 1]);
#endif
	FUNC16(&sc->sc_hw.devs[index].input_pc);

	return (0);		/* success */
}
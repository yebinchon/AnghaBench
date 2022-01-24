#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int usb_stream_t ;
typedef  scalar_t__ usb_error_t ;
typedef  size_t uint8_t ;
struct xhci_trb {int dummy; } ;
struct TYPE_7__ {TYPE_2__* devs; } ;
struct xhci_softc {TYPE_3__ sc_hw; } ;
struct xhci_endpoint_ext {int physaddr; } ;
struct usb_xfer {int stream_id; TYPE_4__* endpoint; TYPE_1__* xroot; } ;
struct usb_page_search {int /*<<< orphan*/  physaddr; } ;
struct usb_page_cache {int dummy; } ;
struct usb_endpoint_descriptor {size_t bEndpointAddress; int bmAttributes; } ;
struct usb_device {size_t controller_slot_id; } ;
struct TYPE_8__ {struct usb_endpoint_descriptor* edesc; } ;
struct TYPE_6__ {struct usb_page_cache input_pc; } ;
struct TYPE_5__ {struct usb_device* udev; int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t) ; 
 int UE_CONTROL ; 
 size_t UE_DIR_IN ; 
 int UE_XFERTYPE ; 
 scalar_t__ USB_ERR_NO_PIPE ; 
 struct xhci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_softc*) ; 
 int FUNC4 (int) ; 
 size_t FUNC5 (size_t) ; 
 int XHCI_MAX_TRANSFERS ; 
 int /*<<< orphan*/  FUNC6 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_page_search*) ; 
 scalar_t__ FUNC7 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC8 (struct xhci_softc*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC9 (struct xhci_softc*,int /*<<< orphan*/ ,size_t,size_t) ; 
 scalar_t__ FUNC10 (struct xhci_softc*,int,int,size_t,size_t) ; 
 scalar_t__ FUNC11 (struct xhci_softc*,int /*<<< orphan*/ ,size_t,size_t) ; 
 scalar_t__ FUNC12 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*,unsigned int,int /*<<< orphan*/ ) ; 
 struct xhci_endpoint_ext* FUNC14 (struct usb_device*,struct usb_endpoint_descriptor*) ; 

__attribute__((used)) static usb_error_t
FUNC15(struct usb_xfer *xfer)
{
	struct xhci_softc *sc = FUNC1(xfer->xroot->bus);
	struct usb_page_search buf_inp;
	struct usb_device *udev;
	struct xhci_endpoint_ext *pepext;
	struct usb_endpoint_descriptor *edesc;
	struct usb_page_cache *pcinp;
	usb_error_t err;
	usb_stream_t stream_id;
	uint8_t index;
	uint8_t epno;

	pepext = FUNC14(xfer->xroot->udev,
	    xfer->endpoint->edesc);

	udev = xfer->xroot->udev;
	index = udev->controller_slot_id;

	pcinp = &sc->sc_hw.devs[index].input_pc;

	FUNC6(pcinp, 0, &buf_inp);

	edesc = xfer->endpoint->edesc;

	epno = edesc->bEndpointAddress;
	stream_id = xfer->stream_id;

	if ((edesc->bmAttributes & UE_XFERTYPE) == UE_CONTROL)
		epno |= UE_DIR_IN;

	epno = FUNC5(epno);

 	if (epno == 0)
		return (USB_ERR_NO_PIPE);		/* invalid */

	FUNC2(sc);

	/* configure endpoint */

	err = FUNC12(xfer);

	if (err != 0) {
		FUNC3(sc);
		return (err);
	}

	/*
	 * Get the endpoint into the stopped state according to the
	 * endpoint context state diagram in the XHCI specification:
	 */

	err = FUNC11(sc, 0, epno, index);

	if (err != 0)
		FUNC0("Could not stop endpoint %u\n", epno);

	err = FUNC9(sc, 0, epno, index);

	if (err != 0)
		FUNC0("Could not reset endpoint %u\n", epno);

	err = FUNC10(sc,
	    (pepext->physaddr + (stream_id * sizeof(struct xhci_trb) *
	    XHCI_MAX_TRANSFERS)) | FUNC4(1),
	    stream_id, epno, index);

	if (err != 0)
		FUNC0("Could not set dequeue ptr for endpoint %u\n", epno);

	/*
	 * Get the endpoint into the running state according to the
	 * endpoint context state diagram in the XHCI specification:
	 */

	FUNC13(udev, (1U << epno) | 1U, 0);

	if (epno > 1)
		err = FUNC7(sc, buf_inp.physaddr, 0, index);
	else
		err = FUNC8(sc, buf_inp.physaddr, index);

	if (err != 0)
		FUNC0("Could not configure endpoint %u\n", epno);

	FUNC3(sc);

	return (0);
}
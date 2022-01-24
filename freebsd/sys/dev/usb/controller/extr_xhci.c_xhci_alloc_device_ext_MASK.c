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
typedef  int /*<<< orphan*/  uint64_t ;
struct xhci_trb {void* dwTrb3; void* dwTrb2; int /*<<< orphan*/  qwTrb0; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma_parent_tag; } ;
struct TYPE_5__ {TYPE_1__* devs; } ;
struct xhci_softc {TYPE_3__ sc_bus; TYPE_2__ sc_hw; scalar_t__ sc_ctx_is_64_byte; } ;
struct xhci_input_dev_ctx {int dummy; } ;
struct xhci_dev_endpoint_trbs {int dummy; } ;
struct xhci_dev_ctx {int dummy; } ;
struct usb_page_search {int /*<<< orphan*/  physaddr; struct xhci_trb* buffer; } ;
struct usb_page_cache {int /*<<< orphan*/  tag_parent; } ;
struct usb_page {int dummy; } ;
struct usb_device {size_t controller_slot_id; int /*<<< orphan*/  bus; } ;
struct TYPE_4__ {struct usb_page* endpoint_pg; struct usb_page_cache* endpoint_pc; struct usb_page input_pg; struct usb_page_cache input_pc; struct usb_page device_pg; struct usb_page_cache device_pc; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_ERR_NOMEM ; 
 struct xhci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t XHCI_MAX_ENDPOINTS ; 
 int XHCI_MAX_TRANSFERS ; 
 int /*<<< orphan*/  XHCI_PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int XHCI_TRB_3_CYCLE_BIT ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XHCI_TRB_ALIGN ; 
 int /*<<< orphan*/  XHCI_TRB_TYPE_LINK ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct usb_page_cache*,struct usb_page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_page_cache*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_page_search*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct xhci_softc*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static usb_error_t
FUNC10(struct usb_device *udev)
{
	struct xhci_softc *sc = FUNC0(udev->bus);
	struct usb_page_search buf_dev;
	struct usb_page_search buf_ep;
	struct xhci_trb *trb;
	struct usb_page_cache *pc;
	struct usb_page *pg;
	uint64_t addr;
	uint8_t index;
	uint8_t i;

	index = udev->controller_slot_id;

	pc = &sc->sc_hw.devs[index].device_pc;
	pg = &sc->sc_hw.devs[index].device_pg;

	/* need to initialize the page cache */
	pc->tag_parent = sc->sc_bus.dma_parent_tag;

	if (FUNC5(pc, pg, sc->sc_ctx_is_64_byte ?
	    (2 * sizeof(struct xhci_dev_ctx)) :
	    sizeof(struct xhci_dev_ctx), XHCI_PAGE_SIZE))
		goto error;

	FUNC7(pc, 0, &buf_dev);

	pc = &sc->sc_hw.devs[index].input_pc;
	pg = &sc->sc_hw.devs[index].input_pg;

	/* need to initialize the page cache */
	pc->tag_parent = sc->sc_bus.dma_parent_tag;

	if (FUNC5(pc, pg, sc->sc_ctx_is_64_byte ?
	    (2 * sizeof(struct xhci_input_dev_ctx)) :
	    sizeof(struct xhci_input_dev_ctx), XHCI_PAGE_SIZE)) {
		goto error;
	}

	/* initialize all endpoint LINK TRBs */

	for (i = 0; i != XHCI_MAX_ENDPOINTS; i++) {

		pc = &sc->sc_hw.devs[index].endpoint_pc[i];
		pg = &sc->sc_hw.devs[index].endpoint_pg[i];

		/* need to initialize the page cache */
		pc->tag_parent = sc->sc_bus.dma_parent_tag;

		if (FUNC5(pc, pg,
		    sizeof(struct xhci_dev_endpoint_trbs), XHCI_TRB_ALIGN)) {
			goto error;
		}

		/* lookup endpoint TRB ring */
		FUNC7(pc, 0, &buf_ep);

		/* get TRB pointer */
		trb = buf_ep.buffer;
		trb += XHCI_MAX_TRANSFERS - 1;

		/* get TRB start address */
		addr = buf_ep.physaddr;

		/* create LINK TRB */
		trb->qwTrb0 = FUNC4(addr);
		trb->dwTrb2 = FUNC3(FUNC1(0));
		trb->dwTrb3 = FUNC3(XHCI_TRB_3_CYCLE_BIT |
		    FUNC2(XHCI_TRB_TYPE_LINK));

		FUNC6(pc);
	}

	FUNC9(sc, index, buf_dev.physaddr);

	return (0);

error:
	FUNC8(udev);

	return (USB_ERR_NOMEM);
}
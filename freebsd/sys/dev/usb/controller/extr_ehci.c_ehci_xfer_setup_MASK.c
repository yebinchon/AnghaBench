#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_8__ {int bdma_enable; size_t curr_dma_set; } ;
struct usb_xfer {int nframes; int max_data_length; int max_hc_frame_size; TYPE_2__ flags_int; void** qh_start; void** td_start; } ;
struct usb_setup_params {int hc_max_packet_size; int hc_max_packet_count; int hc_max_frame_size; scalar_t__ speed; scalar_t__ buf; void* err; int /*<<< orphan*/ * methods; struct usb_xfer* curr_xfer; TYPE_1__* udev; } ;
struct usb_page_search {int physaddr; TYPE_3__* buffer; } ;
struct usb_page_cache {int dummy; } ;
typedef  int /*<<< orphan*/  ehci_softc_t ;
struct TYPE_9__ {struct usb_page_cache* page_cache; void* obj_next; void* qh_self; void* qtd_self; void* sitd_self; void* itd_self; } ;
typedef  TYPE_3__ ehci_sitd_t ;
typedef  TYPE_3__ ehci_qtd_t ;
typedef  TYPE_3__ ehci_qh_t ;
typedef  TYPE_3__ ehci_itd_t ;
struct TYPE_7__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EHCI_ITD_ALIGN ; 
 int EHCI_LINK_ITD ; 
 int EHCI_LINK_QH ; 
 int EHCI_LINK_SITD ; 
 int /*<<< orphan*/  EHCI_QH_ALIGN ; 
 int /*<<< orphan*/  EHCI_QTD_ALIGN ; 
 void* EHCI_QTD_PAYLOAD_MAX ; 
 int /*<<< orphan*/  EHCI_SITD_ALIGN ; 
 void* USB_ERR_NOMEM ; 
 int USB_FS_BYTES_PER_HS_UFRAME ; 
 scalar_t__ USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  ehci_device_bulk_methods ; 
 int /*<<< orphan*/  ehci_device_ctrl_methods ; 
 int /*<<< orphan*/  ehci_device_intr_methods ; 
 int /*<<< orphan*/  ehci_device_isoc_fs_methods ; 
 int /*<<< orphan*/  ehci_device_isoc_hs_methods ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_page_cache*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_page_cache*,int /*<<< orphan*/ ,struct usb_page_search*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_setup_params*) ; 
 scalar_t__ FUNC5 (struct usb_setup_params*,struct usb_page_cache**,int,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC7(struct usb_setup_params *parm)
{
	struct usb_page_search page_info;
	struct usb_page_cache *pc;
	ehci_softc_t *sc;
	struct usb_xfer *xfer;
	void *last_obj;
	uint32_t nqtd;
	uint32_t nqh;
	uint32_t nsitd;
	uint32_t nitd;
	uint32_t n;

	sc = FUNC0(parm->udev->bus);
	xfer = parm->curr_xfer;

	nqtd = 0;
	nqh = 0;
	nsitd = 0;
	nitd = 0;

	/*
	 * compute maximum number of some structures
	 */
	if (parm->methods == &ehci_device_ctrl_methods) {

		/*
		 * The proof for the "nqtd" formula is illustrated like
		 * this:
		 *
		 * +------------------------------------+
		 * |                                    |
		 * |         |remainder ->              |
		 * |   +-----+---+                      |
		 * |   | xxx | x | frm 0                |
		 * |   +-----+---++                     |
		 * |   | xxx | xx | frm 1               |
		 * |   +-----+----+                     |
		 * |            ...                     |
		 * +------------------------------------+
		 *
		 * "xxx" means a completely full USB transfer descriptor
		 *
		 * "x" and "xx" means a short USB packet
		 *
		 * For the remainder of an USB transfer modulo
		 * "max_data_length" we need two USB transfer descriptors.
		 * One to transfer the remaining data and one to finalise
		 * with a zero length packet in case the "force_short_xfer"
		 * flag is set. We only need two USB transfer descriptors in
		 * the case where the transfer length of the first one is a
		 * factor of "max_frame_size". The rest of the needed USB
		 * transfer descriptors is given by the buffer size divided
		 * by the maximum data payload.
		 */
		parm->hc_max_packet_size = 0x400;
		parm->hc_max_packet_count = 1;
		parm->hc_max_frame_size = EHCI_QTD_PAYLOAD_MAX;
		xfer->flags_int.bdma_enable = 1;

		FUNC4(parm);

		nqh = 1;
		nqtd = ((2 * xfer->nframes) + 1	/* STATUS */
		    + (xfer->max_data_length / xfer->max_hc_frame_size));

	} else if (parm->methods == &ehci_device_bulk_methods) {

		parm->hc_max_packet_size = 0x400;
		parm->hc_max_packet_count = 1;
		parm->hc_max_frame_size = EHCI_QTD_PAYLOAD_MAX;
		xfer->flags_int.bdma_enable = 1;

		FUNC4(parm);

		nqh = 1;
		nqtd = ((2 * xfer->nframes)
		    + (xfer->max_data_length / xfer->max_hc_frame_size));

	} else if (parm->methods == &ehci_device_intr_methods) {

		if (parm->speed == USB_SPEED_HIGH) {
			parm->hc_max_packet_size = 0x400;
			parm->hc_max_packet_count = 3;
		} else if (parm->speed == USB_SPEED_FULL) {
			parm->hc_max_packet_size = USB_FS_BYTES_PER_HS_UFRAME;
			parm->hc_max_packet_count = 1;
		} else {
			parm->hc_max_packet_size = USB_FS_BYTES_PER_HS_UFRAME / 8;
			parm->hc_max_packet_count = 1;
		}

		parm->hc_max_frame_size = EHCI_QTD_PAYLOAD_MAX;
		xfer->flags_int.bdma_enable = 1;

		FUNC4(parm);

		nqh = 1;
		nqtd = ((2 * xfer->nframes)
		    + (xfer->max_data_length / xfer->max_hc_frame_size));

	} else if (parm->methods == &ehci_device_isoc_fs_methods) {

		parm->hc_max_packet_size = 0x3FF;
		parm->hc_max_packet_count = 1;
		parm->hc_max_frame_size = 0x3FF;
		xfer->flags_int.bdma_enable = 1;

		FUNC4(parm);

		nsitd = xfer->nframes;

	} else if (parm->methods == &ehci_device_isoc_hs_methods) {

		parm->hc_max_packet_size = 0x400;
		parm->hc_max_packet_count = 3;
		parm->hc_max_frame_size = 0xC00;
		xfer->flags_int.bdma_enable = 1;

		FUNC4(parm);

		nitd = ((xfer->nframes + 7) / 8) <<
		    FUNC6(xfer);

	} else {

		parm->hc_max_packet_size = 0x400;
		parm->hc_max_packet_count = 1;
		parm->hc_max_frame_size = 0x400;

		FUNC4(parm);
	}

alloc_dma_set:

	if (parm->err) {
		return;
	}
	/*
	 * Allocate queue heads and transfer descriptors
	 */
	last_obj = NULL;

	if (FUNC5(
	    parm, &pc, sizeof(ehci_itd_t),
	    EHCI_ITD_ALIGN, nitd)) {
		parm->err = USB_ERR_NOMEM;
		return;
	}
	if (parm->buf) {
		for (n = 0; n != nitd; n++) {
			ehci_itd_t *td;

			FUNC3(pc + n, 0, &page_info);

			td = page_info.buffer;

			/* init TD */
			td->itd_self = FUNC1(sc, page_info.physaddr | EHCI_LINK_ITD);
			td->obj_next = last_obj;
			td->page_cache = pc + n;

			last_obj = td;

			FUNC2(pc + n);
		}
	}
	if (FUNC5(
	    parm, &pc, sizeof(ehci_sitd_t),
	    EHCI_SITD_ALIGN, nsitd)) {
		parm->err = USB_ERR_NOMEM;
		return;
	}
	if (parm->buf) {
		for (n = 0; n != nsitd; n++) {
			ehci_sitd_t *td;

			FUNC3(pc + n, 0, &page_info);

			td = page_info.buffer;

			/* init TD */
			td->sitd_self = FUNC1(sc, page_info.physaddr | EHCI_LINK_SITD);
			td->obj_next = last_obj;
			td->page_cache = pc + n;

			last_obj = td;

			FUNC2(pc + n);
		}
	}
	if (FUNC5(
	    parm, &pc, sizeof(ehci_qtd_t),
	    EHCI_QTD_ALIGN, nqtd)) {
		parm->err = USB_ERR_NOMEM;
		return;
	}
	if (parm->buf) {
		for (n = 0; n != nqtd; n++) {
			ehci_qtd_t *qtd;

			FUNC3(pc + n, 0, &page_info);

			qtd = page_info.buffer;

			/* init TD */
			qtd->qtd_self = FUNC1(sc, page_info.physaddr);
			qtd->obj_next = last_obj;
			qtd->page_cache = pc + n;

			last_obj = qtd;

			FUNC2(pc + n);
		}
	}
	xfer->td_start[xfer->flags_int.curr_dma_set] = last_obj;

	last_obj = NULL;

	if (FUNC5(
	    parm, &pc, sizeof(ehci_qh_t),
	    EHCI_QH_ALIGN, nqh)) {
		parm->err = USB_ERR_NOMEM;
		return;
	}
	if (parm->buf) {
		for (n = 0; n != nqh; n++) {
			ehci_qh_t *qh;

			FUNC3(pc + n, 0, &page_info);

			qh = page_info.buffer;

			/* init QH */
			qh->qh_self = FUNC1(sc, page_info.physaddr | EHCI_LINK_QH);
			qh->obj_next = last_obj;
			qh->page_cache = pc + n;

			last_obj = qh;

			FUNC2(pc + n);
		}
	}
	xfer->qh_start[xfer->flags_int.curr_dma_set] = last_obj;

	if (!xfer->flags_int.curr_dma_set) {
		xfer->flags_int.curr_dma_set = 1;
		goto alloc_dma_set;
	}
}
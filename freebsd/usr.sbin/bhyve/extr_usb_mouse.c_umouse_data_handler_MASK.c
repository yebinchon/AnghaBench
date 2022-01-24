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
typedef  int /*<<< orphan*/  uint8_t ;
struct usb_data_xfer_block {int blen; int processed; int bdone; int /*<<< orphan*/ * buf; } ;
struct usb_data_xfer {int head; int ndata; struct usb_data_xfer_block* data; } ;
struct umouse_softc {int polling; int /*<<< orphan*/  mtx; int /*<<< orphan*/  um_report; scalar_t__ newdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_data_xfer_block*,int /*<<< orphan*/ ) ; 
 int USB_ERR_CANCELLED ; 
 int USB_ERR_NOMEM ; 
 int USB_ERR_NORMAL_COMPLETION ; 
 int USB_ERR_SHORT_XFER ; 
 int USB_ERR_STALLED ; 
 int USB_MAX_XFER_BLOCKS ; 
 int /*<<< orphan*/  USB_NAK ; 
 int /*<<< orphan*/  USB_STALL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(void *scarg, struct usb_data_xfer *xfer, int dir,
     int epctx)
{
	struct umouse_softc *sc;
	struct usb_data_xfer_block *data;
	uint8_t *udata;
	int len, i, idx;
	int err;

	FUNC0(("umouse handle data - DIR=%s|EP=%d, blen %d\r\n",
	        dir ? "IN" : "OUT", epctx, xfer->data[0].blen));


	/* find buffer to add data */
	udata = NULL;
	err = USB_ERR_NORMAL_COMPLETION;

	/* handle xfer at first unprocessed item with buffer */
	data = NULL;
	idx = xfer->head;
	for (i = 0; i < xfer->ndata; i++) {
		data = &xfer->data[idx];
		if (data->buf != NULL && data->blen != 0) {
			break;
		} else {
			data->processed = 1;
			data = NULL;
		}
		idx = (idx + 1) % USB_MAX_XFER_BLOCKS;
	}
	if (!data)
		goto done;

	udata = data->buf;
	len = data->blen;

	if (udata == NULL) {
		FUNC0(("umouse no buffer provided for input\r\n"));
		err = USB_ERR_NOMEM;
		goto done;
	}

	sc = scarg;

	if (dir) {

		FUNC3(&sc->mtx);

		if (!sc->newdata) {
			err = USB_ERR_CANCELLED;
			FUNC1(&xfer->data[xfer->head], USB_NAK);
			FUNC4(&sc->mtx);
			goto done;
		}

		if (sc->polling) {
			err = USB_ERR_STALLED;
			FUNC1(data, USB_STALL);
			FUNC4(&sc->mtx);
			goto done;
		}
		sc->polling = 1;

		if (len > 0) {
			sc->newdata = 0;

			data->processed = 1;
			data->bdone += 6;
			FUNC2(udata, &sc->um_report, 6);
			data->blen = len - 6;
			if (data->blen > 0)
				err = USB_ERR_SHORT_XFER;
		}

		sc->polling = 0;
		FUNC4(&sc->mtx);
	} else { 
		FUNC1(data, USB_STALL);
		err = USB_ERR_STALLED;
	}

done:
	return (err);
}
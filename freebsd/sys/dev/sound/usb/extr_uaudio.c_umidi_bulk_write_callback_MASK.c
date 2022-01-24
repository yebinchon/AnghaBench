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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fp; } ;
struct umidi_sub_chan {int /*<<< orphan*/ * temp_cmd; TYPE_1__ fifo; int /*<<< orphan*/  write_open; } ;
struct umidi_chan {int curr_cable; size_t max_emb_jack; int /*<<< orphan*/  single_command; struct umidi_sub_chan* sub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int UMIDI_TX_FRAMES ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 size_t USB_FIFO_TX ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int /*<<< orphan*/  FUNC2 (struct umidi_sub_chan*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_page_cache*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC7 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 struct umidi_chan* FUNC10 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct usb_xfer *xfer, usb_error_t error)
{
	struct umidi_chan *chan = FUNC10(xfer);
	struct umidi_sub_chan *sub;
	struct usb_page_cache *pc;
	uint32_t actlen;
	uint16_t nframes;
	uint8_t buf;
	uint8_t start_cable;
	uint8_t tr_any;
	int len;

	FUNC11(xfer, &len, NULL, NULL, NULL);

	/*
	 * NOTE: Some MIDI devices only accept 4 bytes of data per
	 * short terminated USB transfer.
	 */
	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:
		FUNC0("actlen=%d bytes\n", len);

	case USB_ST_SETUP:
tr_setup:
		FUNC0("start\n");

		nframes = 0;	/* reset */
		start_cable = chan->curr_cable;
		tr_any = 0;
		pc = FUNC7(xfer, 0);

		while (1) {

			/* round robin de-queueing */

			sub = &chan->sub[chan->curr_cable];

			if (sub->write_open) {
				FUNC3(sub->fifo.fp[USB_FIFO_TX],
				    &buf, 1, &actlen, 0);
			} else {
				actlen = 0;
			}

			if (actlen) {

				tr_any = 1;

				FUNC0("byte=0x%02x from FIFO %u\n", buf,
				    (unsigned int)chan->curr_cable);

				if (FUNC2(sub, chan->curr_cable, buf)) {

					FUNC0("sub=0x%02x 0x%02x 0x%02x 0x%02x\n",
					    sub->temp_cmd[0], sub->temp_cmd[1],
					    sub->temp_cmd[2], sub->temp_cmd[3]);

					FUNC4(pc, nframes * 4, sub->temp_cmd, 4);

					nframes++;

					if ((nframes >= UMIDI_TX_FRAMES) || (chan->single_command != 0))
						break;
				} else {
					continue;
				}
			}

			chan->curr_cable++;
			if (chan->curr_cable >= chan->max_emb_jack)
				chan->curr_cable = 0;

			if (chan->curr_cable == start_cable) {
				if (tr_any == 0)
					break;
				tr_any = 0;
			}
		}

		if (nframes != 0) {
			FUNC0("Transferring %d frames\n", (int)nframes);
			FUNC8(xfer, 0, 4 * nframes);
			FUNC6(xfer);
		}
		break;

	default:			/* Error */

		FUNC0("error=%s\n", FUNC5(error));

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC9(xfer);
			goto tr_setup;
		}
		break;
	}
}
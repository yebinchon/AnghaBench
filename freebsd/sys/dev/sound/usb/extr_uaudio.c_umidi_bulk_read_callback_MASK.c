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
typedef  int uint16_t ;
struct usb_xfer {int dummy; } ;
struct usb_page_cache {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * fp; } ;
struct umidi_sub_chan {TYPE_1__ fifo; int /*<<< orphan*/  read_open; } ;
struct umidi_chan {int max_emb_jack; struct umidi_sub_chan* sub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  USB_ERR_CANCELLED ; 
 size_t USB_FIFO_RX ; 
 int FUNC1 (struct usb_xfer*) ; 
#define  USB_ST_SETUP 129 
#define  USB_ST_TRANSFERRED 128 
 int* umidi_cmd_to_len ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_page_cache*,int,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_xfer*) ; 
 struct usb_page_cache* FUNC6 (struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_xfer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_xfer*) ; 
 struct umidi_chan* FUNC10 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_xfer*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(struct usb_xfer *xfer, usb_error_t error)
{
	struct umidi_chan *chan = FUNC10(xfer);
	struct umidi_sub_chan *sub;
	struct usb_page_cache *pc;
	uint8_t buf[4];
	uint8_t cmd_len;
	uint8_t cn;
	uint16_t pos;
	int actlen;

	FUNC11(xfer, &actlen, NULL, NULL, NULL);

	switch (FUNC1(xfer)) {
	case USB_ST_TRANSFERRED:

		FUNC0("actlen=%d bytes\n", actlen);

		pos = 0;
		pc = FUNC6(xfer, 0);

		while (actlen >= 4) {

			/* copy out the MIDI data */
			FUNC3(pc, pos, buf, 4);
			/* command length */
			cmd_len = umidi_cmd_to_len[buf[0] & 0xF];
			/* cable number */
			cn = buf[0] >> 4;
			/*
			 * Lookup sub-channel. The index is range
			 * checked below.
			 */
			sub = &chan->sub[cn];

			if ((cmd_len != 0) && (cn < chan->max_emb_jack) &&
			    (sub->read_open != 0)) {

				/* Send data to the application */
				FUNC2(
				    sub->fifo.fp[USB_FIFO_RX],
				    buf + 1, cmd_len, 1);
			}
			actlen -= 4;
			pos += 4;
		}

	case USB_ST_SETUP:
		FUNC0("start\n");
tr_setup:
		FUNC8(xfer, 0, FUNC7(xfer));
		FUNC5(xfer);
		break;

	default:
		FUNC0("error=%s\n", FUNC4(error));

		if (error != USB_ERR_CANCELLED) {
			/* try to clear stall first */
			FUNC9(xfer);
			goto tr_setup;
		}
		break;
	}
}
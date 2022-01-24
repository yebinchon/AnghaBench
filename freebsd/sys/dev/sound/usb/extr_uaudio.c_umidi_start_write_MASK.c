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
struct usb_fifo {int dummy; } ;
struct umidi_chan {int /*<<< orphan*/ ** xfer; } ;

/* Variables and functions */
 size_t UMIDI_TX_TRANSFER ; 
 int /*<<< orphan*/  FUNC0 (struct usb_fifo*,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ ) ; 
 struct umidi_chan* FUNC1 (struct usb_fifo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct usb_fifo *fifo)
{
	struct umidi_chan *chan = FUNC1(fifo);

	if (chan->xfer[UMIDI_TX_TRANSFER] == NULL) {
		uint8_t buf[1];
		int actlen;
		do {
			/* dump data */
			FUNC0(fifo, buf, 1, &actlen, 0);
		} while (actlen > 0);
	} else {
		FUNC2(chan->xfer[UMIDI_TX_TRANSFER]);
	}
}
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
struct usb_fifo {int dummy; } ;
struct umidi_sub_chan {scalar_t__ write_open; } ;
struct umidi_chan {scalar_t__ write_open_refcount; int /*<<< orphan*/ * xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t UMIDI_TX_TRANSFER ; 
 struct umidi_sub_chan* FUNC1 (struct usb_fifo*) ; 
 struct umidi_chan* FUNC2 (struct usb_fifo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct usb_fifo *fifo)
{
	struct umidi_chan *chan = FUNC2(fifo);
	struct umidi_sub_chan *sub = FUNC1(fifo);

	FUNC0("\n");

	sub->write_open = 0;

	if (--(chan->write_open_refcount) == 0) {
		FUNC0("(stopping write transfer)\n");
		FUNC3(chan->xfer[UMIDI_TX_TRANSFER]);
	}
}
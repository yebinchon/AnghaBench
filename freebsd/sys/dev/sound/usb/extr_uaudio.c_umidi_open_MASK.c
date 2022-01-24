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
struct umidi_sub_chan {int read_open; int write_open; int /*<<< orphan*/  state; } ;
struct umidi_chan {int /*<<< orphan*/  mtx; int /*<<< orphan*/  write_open_refcount; int /*<<< orphan*/  read_open_refcount; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  UMIDI_ST_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct umidi_sub_chan* FUNC2 (struct usb_fifo*) ; 
 scalar_t__ FUNC3 (struct usb_fifo*,int,int) ; 
 struct umidi_chan* FUNC4 (struct usb_fifo*) ; 

__attribute__((used)) static int
FUNC5(struct usb_fifo *fifo, int fflags)
{
	struct umidi_chan *chan = FUNC4(fifo);
	struct umidi_sub_chan *sub = FUNC2(fifo);

	if (fflags & FREAD) {
		if (FUNC3(fifo, 4, (1024 / 4))) {
			return (ENOMEM);
		}
		FUNC0(&chan->mtx);
		chan->read_open_refcount++;
		sub->read_open = 1;
		FUNC1(&chan->mtx);
	}
	if (fflags & FWRITE) {
		if (FUNC3(fifo, 32, (1024 / 32))) {
			return (ENOMEM);
		}
		/* clear stall first */
		FUNC0(&chan->mtx);
		chan->write_open_refcount++;
		sub->write_open = 1;

		/* reset */
		sub->state = UMIDI_ST_UNKNOWN;
		FUNC1(&chan->mtx);
	}
	return (0);			/* success */
}
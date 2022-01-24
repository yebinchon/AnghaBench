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
struct usb_xfer_queue {int recurse_1; int recurse_3; int recurse_2; struct usb_xfer* curr; int /*<<< orphan*/  (* command ) (struct usb_xfer_queue*) ;int /*<<< orphan*/  head; } ;
struct usb_xfer {int /*<<< orphan*/ * wait_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct usb_xfer*) ; 
 struct usb_xfer* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct usb_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_xfer_queue*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_xfer_queue*,struct usb_xfer*) ; 
 int /*<<< orphan*/  wait_entry ; 

void
FUNC5(struct usb_xfer_queue *pq, struct usb_xfer *xfer)
{
	if (xfer) {
		/*
		 * If the transfer is not already processing,
		 * queue it!
		 */
		if (pq->curr != xfer) {
			FUNC4(pq, xfer);
			if (pq->curr != NULL) {
				/* something is already processing */
				FUNC0(6, "busy %p\n", pq->curr);
				return;
			}
		}
	} else {
		/* Get next element in queue */
		pq->curr = NULL;
	}

	if (!pq->recurse_1) {

		/* clear third recurse flag */
		pq->recurse_3 = 0;

		do {
			/* set two first recurse flags */
			pq->recurse_1 = 1;
			pq->recurse_2 = 1;

			if (pq->curr == NULL) {
				xfer = FUNC1(&pq->head);
				if (xfer) {
					FUNC2(&pq->head, xfer,
					    wait_entry);
					xfer->wait_queue = NULL;
					pq->curr = xfer;
				} else {
					break;
				}
			}
			FUNC0(6, "cb %p (enter)\n", pq->curr);
			(pq->command) (pq);
			FUNC0(6, "cb %p (leave)\n", pq->curr);

			/*
			 * Set third recurse flag to indicate
			 * recursion happened:
			 */
			pq->recurse_3 = 1;

		} while (!pq->recurse_2);

		/* clear first recurse flag */
		pq->recurse_1 = 0;

	} else {
		/* clear second recurse flag */
		pq->recurse_2 = 0;
	}
}
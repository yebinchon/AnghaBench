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
typedef  int uint8_t ;
typedef  void* uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  page_cache; void* td_token; void* td_status; struct TYPE_2__* obj_next; } ;
typedef  TYPE_1__ uhci_td_t ;
struct usb_xfer {TYPE_1__** td_start; int /*<<< orphan*/  address; int /*<<< orphan*/  endpointno; } ;

/* Variables and functions */
 scalar_t__ UE_DIR_IN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* UHCI_TD_IOS ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct usb_xfer *xfer)
{
	uhci_td_t *td;
	uint32_t td_token;
	uint8_t ds;

	td_token =
	    (FUNC0(xfer->endpointno) == UE_DIR_IN) ?
	    FUNC1(0, xfer->endpointno, xfer->address, 0) :
	    FUNC2(0, xfer->endpointno, xfer->address, 0);

	td_token = FUNC3(td_token);

	/* initialize all TD's */

	for (ds = 0; ds != 2; ds++) {

		for (td = xfer->td_start[ds]; td; td = td->obj_next) {

			/* mark TD as inactive */
			td->td_status = FUNC3(UHCI_TD_IOS);
			td->td_token = td_token;

			FUNC4(td->page_cache);
		}
	}
}
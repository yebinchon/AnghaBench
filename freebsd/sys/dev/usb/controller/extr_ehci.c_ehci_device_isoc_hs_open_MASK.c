#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct usb_xfer {int max_packet_size; int max_packet_count; int /*<<< orphan*/  endpointno; int /*<<< orphan*/  address; TYPE_2__** td_start; TYPE_1__* xroot; } ;
typedef  int /*<<< orphan*/  ehci_softc_t ;
struct TYPE_4__ {int /*<<< orphan*/  page_cache; void** itd_bp; scalar_t__* itd_status; struct TYPE_4__* obj_next; } ;
typedef  TYPE_2__ ehci_itd_t ;
struct TYPE_3__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EHCI_ITD_SET_DIR_IN ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 scalar_t__ UE_DIR_IN ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct usb_xfer *xfer)
{
	ehci_softc_t *sc = FUNC0(xfer->xroot->bus);
	ehci_itd_t *td;
	uint32_t temp;
	uint8_t ds;

	FUNC7(xfer);

	/* initialize all TD's */

	for (ds = 0; ds != 2; ds++) {

		for (td = xfer->td_start[ds]; td; td = td->obj_next) {

			/* set TD inactive */
			td->itd_status[0] = 0;
			td->itd_status[1] = 0;
			td->itd_status[2] = 0;
			td->itd_status[3] = 0;
			td->itd_status[4] = 0;
			td->itd_status[5] = 0;
			td->itd_status[6] = 0;
			td->itd_status[7] = 0;

			/* set endpoint and address */
			td->itd_bp[0] = FUNC6(sc,
			    FUNC1(xfer->address) |
			    FUNC2(FUNC4(xfer->endpointno)));

			temp =
			    FUNC3(xfer->max_packet_size & 0x7FF);

			/* set direction */
			if (FUNC5(xfer->endpointno) == UE_DIR_IN) {
				temp |= EHCI_ITD_SET_DIR_IN;
			}
			/* set maximum packet size */
			td->itd_bp[1] = FUNC6(sc, temp);

			/* set transfer multiplier */
			td->itd_bp[2] = FUNC6(sc, xfer->max_packet_count & 3);

			FUNC8(td->page_cache);
		}
	}
}
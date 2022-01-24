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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct xhci_trb {void* dwTrb3; void* dwTrb2; int /*<<< orphan*/  qwTrb0; } ;
struct xhci_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XHCI_TRB_TYPE_SET_TR_DEQUEUE ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xhci_softc*,struct xhci_trb*,int) ; 

__attribute__((used)) static usb_error_t
FUNC8(struct xhci_softc *sc, uint64_t dequeue_ptr,
    uint16_t stream_id, uint8_t ep_id, uint8_t slot_id)
{
	struct xhci_trb trb;
	uint32_t temp;

	FUNC0("\n");

	trb.qwTrb0 = FUNC6(dequeue_ptr);

	temp = FUNC1(stream_id);
	trb.dwTrb2 = FUNC5(temp);

	temp = FUNC4(XHCI_TRB_TYPE_SET_TR_DEQUEUE) |
	    FUNC3(slot_id) |
	    FUNC2(ep_id);
	trb.dwTrb3 = FUNC5(temp);

	return (FUNC7(sc, &trb, 100 /* ms */));
}
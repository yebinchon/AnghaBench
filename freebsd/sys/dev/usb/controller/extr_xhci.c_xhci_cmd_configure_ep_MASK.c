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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct xhci_trb {int /*<<< orphan*/  dwTrb3; scalar_t__ dwTrb2; int /*<<< orphan*/  qwTrb0; } ;
struct xhci_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int XHCI_TRB_3_DCEP_BIT ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XHCI_TRB_TYPE_CONFIGURE_EP ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_softc*,struct xhci_trb*,int) ; 

__attribute__((used)) static usb_error_t
FUNC6(struct xhci_softc *sc, uint64_t input_ctx,
    uint8_t deconfigure, uint8_t slot_id)
{
	struct xhci_trb trb;
	uint32_t temp;

	FUNC0("\n");

	trb.qwTrb0 = FUNC4(input_ctx);
	trb.dwTrb2 = 0;
	temp = FUNC2(XHCI_TRB_TYPE_CONFIGURE_EP) |
	    FUNC1(slot_id);

	if (deconfigure)
		temp |= XHCI_TRB_3_DCEP_BIT;

	trb.dwTrb3 = FUNC3(temp);

	return (FUNC5(sc, &trb, 100 /* ms */));
}
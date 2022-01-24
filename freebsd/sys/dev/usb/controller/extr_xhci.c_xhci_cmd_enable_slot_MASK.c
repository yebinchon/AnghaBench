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
typedef  scalar_t__ usb_error_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct xhci_trb {int /*<<< orphan*/  dwTrb3; scalar_t__ dwTrb2; scalar_t__ qwTrb0; } ;
struct xhci_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XHCI_TRB_TYPE_ENABLE_SLOT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct xhci_softc*,struct xhci_trb*,int) ; 

__attribute__((used)) static usb_error_t
FUNC6(struct xhci_softc *sc, uint8_t *pslot)
{
	struct xhci_trb trb;
	uint32_t temp;
	usb_error_t err;

	FUNC0("\n");

	trb.qwTrb0 = 0;
	trb.dwTrb2 = 0;
	trb.dwTrb3 = FUNC3(FUNC2(XHCI_TRB_TYPE_ENABLE_SLOT));

	err = FUNC5(sc, &trb, 100 /* ms */);
	if (err)
		goto done;

	temp = FUNC4(trb.dwTrb3);

	*pslot = FUNC1(temp); 

done:
	return (err);
}
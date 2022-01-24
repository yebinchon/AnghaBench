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
typedef  size_t uint8_t ;
struct TYPE_4__ {TYPE_1__* devs; } ;
struct xhci_softc {size_t sc_noslot; TYPE_2__ sc_hw; } ;
struct usb_device {size_t controller_slot_id; int /*<<< orphan*/ * parent_hub; int /*<<< orphan*/  bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 struct xhci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xhci_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_softc*) ; 
 int /*<<< orphan*/  XHCI_ST_DISABLED ; 
 int /*<<< orphan*/  FUNC3 (struct xhci_softc*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*) ; 

__attribute__((used)) static void
FUNC5(struct usb_device *udev)
{
	struct xhci_softc *sc = FUNC0(udev->bus);
	uint8_t index;

	/* no init for root HUB */
	if (udev->parent_hub == NULL)
		return;

	FUNC1(sc);

	index = udev->controller_slot_id;

	if (index <= sc->sc_noslot) {
		FUNC3(sc, index);
		sc->sc_hw.devs[index].state = XHCI_ST_DISABLED;

		/* free device extension */
		FUNC4(udev);
	}

	FUNC2(sc);
}
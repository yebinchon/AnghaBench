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
typedef  scalar_t__ uint8_t ;
struct xhci_softc {int dummy; } ;
struct usb_device {scalar_t__ controller_slot_id; int /*<<< orphan*/  bus; int /*<<< orphan*/ * parent_hub; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct xhci_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xhci_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct xhci_softc*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ XHCI_MAX_ENDPOINTS ; 
 scalar_t__ XHCI_MAX_STREAMS ; 
 int /*<<< orphan*/  FUNC8 (struct xhci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  door ; 

__attribute__((used)) static void
FUNC9(struct usb_device *udev)
{
	struct xhci_softc *sc = FUNC3(udev->bus);
	uint8_t index;
	uint8_t n;
	uint8_t p;

	FUNC0("\n");

	/* check for root HUB */
	if (udev->parent_hub == NULL)
		return;

	index = udev->controller_slot_id;

	FUNC4(sc);

	/* blindly resume all endpoints */

	FUNC1(udev->bus);

	for (n = 1; n != XHCI_MAX_ENDPOINTS; n++) {
		for (p = 0; p != XHCI_MAX_STREAMS; p++) {
			FUNC8(sc, door, FUNC7(index),
			    n | FUNC6(p));
		}
	}

	FUNC2(udev->bus);

	FUNC5(sc);
}
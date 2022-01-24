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
struct xhci_softc {TYPE_2__ sc_hw; } ;
struct usb_device {size_t controller_slot_id; int /*<<< orphan*/  bus; } ;
struct TYPE_3__ {int /*<<< orphan*/ * endpoint_pc; int /*<<< orphan*/  input_pc; int /*<<< orphan*/  device_pc; } ;

/* Variables and functions */
 struct xhci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t XHCI_MAX_ENDPOINTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xhci_softc*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct usb_device *udev)
{
	struct xhci_softc *sc = FUNC0(udev->bus);
	uint8_t index;
	uint8_t i;

	index = udev->controller_slot_id;
	FUNC2(sc, index, 0);

	FUNC1(&sc->sc_hw.devs[index].device_pc);
	FUNC1(&sc->sc_hw.devs[index].input_pc);
	for (i = 0; i != XHCI_MAX_ENDPOINTS; i++)
		FUNC1(&sc->sc_hw.devs[index].endpoint_pc[i]);
}
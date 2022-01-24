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
struct TYPE_4__ {int /*<<< orphan*/  intr_q; } ;
struct xhci_softc {int /*<<< orphan*/ * sc_config_msg; TYPE_2__ sc_bus; } ;
struct usb_xfer {TYPE_1__* xroot; } ;
struct TYPE_3__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 struct xhci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC4(struct usb_xfer *xfer)
{
	struct xhci_softc *sc = FUNC1(xfer->xroot->bus);

	/* put transfer on interrupt queue (again) */
	FUNC3(&sc->sc_bus.intr_q, xfer);

	(void)FUNC2(FUNC0(&sc->sc_bus),
	    &sc->sc_config_msg[0], &sc->sc_config_msg[1]);
}
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
struct usb_xfer {int dummy; } ;
struct urio_softc {int /*<<< orphan*/  sc_flags; struct usb_xfer** sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  URIO_FLAG_WRITE_STALL ; 
 size_t URIO_T_WR ; 
 scalar_t__ FUNC1 (struct usb_xfer*,struct usb_xfer*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_xfer*) ; 
 struct urio_softc* FUNC3 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC4(struct usb_xfer *xfer, usb_error_t error)
{
	struct urio_softc *sc = FUNC3(xfer);
	struct usb_xfer *xfer_other = sc->sc_xfer[URIO_T_WR];

	if (FUNC1(xfer, xfer_other)) {
		FUNC0("stall cleared\n");
		sc->sc_flags &= ~URIO_FLAG_WRITE_STALL;
		FUNC2(xfer_other);
	}
}
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
struct usb_fifo {int dummy; } ;
struct uhid_softc {int sc_flags; int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 size_t UHID_CTRL_DT_RD ; 
 int UHID_FLAG_IMMED ; 
 size_t UHID_INTR_DT_RD ; 
 struct uhid_softc* FUNC0 (struct usb_fifo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct usb_fifo *fifo)
{
	struct uhid_softc *sc = FUNC0(fifo);

	if (sc->sc_flags & UHID_FLAG_IMMED) {
		FUNC1(sc->sc_xfer[UHID_CTRL_DT_RD]);
	} else {
		FUNC1(sc->sc_xfer[UHID_INTR_DT_RD]);
	}
}
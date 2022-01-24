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
struct uhid_snes_softc {int /*<<< orphan*/ * sc_transfer; } ;

/* Variables and functions */
 size_t UHID_SNES_INTR_DT_RD ; 
 struct uhid_snes_softc* FUNC0 (struct usb_fifo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct usb_fifo *fifo)
{
	struct uhid_snes_softc *sc = FUNC0(fifo);

	FUNC1(sc->sc_transfer[UHID_SNES_INTR_DT_RD]);
}
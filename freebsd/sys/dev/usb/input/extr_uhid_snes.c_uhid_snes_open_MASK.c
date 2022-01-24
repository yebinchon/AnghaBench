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
struct uhid_snes_softc {int sc_fflags; struct usb_fifo** sc_fifo_open; int /*<<< orphan*/ * sc_transfer; int /*<<< orphan*/  sc_mutex; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  UHID_SNES_IFQ_MAX_LEN ; 
 size_t UHID_SNES_INTR_DT_RD ; 
 size_t USB_FIFO_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct uhid_snes_softc*) ; 
 int FUNC3 (struct usb_fifo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct uhid_snes_softc* FUNC4 (struct usb_fifo*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct usb_fifo *fifo, int fflags)
{
	struct uhid_snes_softc *sc = FUNC4(fifo);
	int error;

	if (sc->sc_fflags & fflags) {
		FUNC2(sc);
		return (EBUSY);
	}

	FUNC0(&sc->sc_mutex);
	FUNC6(sc->sc_transfer[UHID_SNES_INTR_DT_RD]);
	FUNC1(&sc->sc_mutex);

	error = FUNC3(fifo,
	    FUNC5(sc->sc_transfer[UHID_SNES_INTR_DT_RD]),
	    UHID_SNES_IFQ_MAX_LEN);
	if (error)
		return (ENOMEM);

	sc->sc_fifo_open[USB_FIFO_RX] = fifo;

	return (0);
}
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
struct ulpt_softc {int sc_fflags; struct usb_fifo** sc_fifo_open; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/  sc_mtx; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int FREAD ; 
 int FWRITE ; 
 size_t ULPT_BULK_DT_RD ; 
 size_t ULPT_BULK_DT_WR ; 
 int /*<<< orphan*/  ULPT_IFQ_MAXLEN ; 
 size_t USB_FIFO_RX ; 
 size_t USB_FIFO_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct usb_fifo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ulpt_softc* FUNC3 (struct usb_fifo*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct usb_fifo *fifo, int fflags)
{
	struct ulpt_softc *sc = FUNC3(fifo);

	if (sc->sc_fflags & fflags) {
		return (EBUSY);
	}
	if (fflags & FREAD) {
		/* clear stall first */
		FUNC0(&sc->sc_mtx);
		FUNC5(sc->sc_xfer[ULPT_BULK_DT_RD]);
		FUNC1(&sc->sc_mtx);
		if (FUNC2(fifo,
		    FUNC4(sc->sc_xfer[ULPT_BULK_DT_RD]),
		    ULPT_IFQ_MAXLEN)) {
			return (ENOMEM);
		}
		/* set which FIFO is opened */
		sc->sc_fifo_open[USB_FIFO_RX] = fifo;
	}
	if (fflags & FWRITE) {
		/* clear stall first */
		FUNC0(&sc->sc_mtx);
		FUNC5(sc->sc_xfer[ULPT_BULK_DT_WR]);
		FUNC1(&sc->sc_mtx);
		if (FUNC2(fifo,
		    FUNC4(sc->sc_xfer[ULPT_BULK_DT_WR]),
		    ULPT_IFQ_MAXLEN)) {
			return (ENOMEM);
		}
		/* set which FIFO is opened */
		sc->sc_fifo_open[USB_FIFO_TX] = fifo;
	}
	sc->sc_fflags |= fflags & (FREAD | FWRITE);
	return (0);
}
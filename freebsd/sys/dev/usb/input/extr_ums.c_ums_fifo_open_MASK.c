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
struct ums_softc {int sc_fflags; scalar_t__ sc_evflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  UMS_BUF_SIZE ; 
 int /*<<< orphan*/  UMS_IFQ_MAXLEN ; 
 int /*<<< orphan*/  FUNC1 (struct ums_softc*) ; 
 scalar_t__ FUNC2 (struct usb_fifo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ums_softc* FUNC3 (struct usb_fifo*) ; 

__attribute__((used)) static int
FUNC4(struct usb_fifo *fifo, int fflags)
{
	struct ums_softc *sc = FUNC3(fifo);

	FUNC0(2, "\n");

	/* check for duplicate open, should not happen */
	if (sc->sc_fflags & fflags)
		return (EBUSY);

	/* check for first open */
#ifdef EVDEV_SUPPORT
	if (sc->sc_fflags == 0 && sc->sc_evflags == 0)
		ums_reset(sc);
#else
	if (sc->sc_fflags == 0)
		FUNC1(sc);
#endif

	if (fflags & FREAD) {
		/* allocate RX buffer */
		if (FUNC2(fifo,
		    UMS_BUF_SIZE, UMS_IFQ_MAXLEN)) {
			return (ENOMEM);
		}
	}

	sc->sc_fflags |= fflags & (FREAD | FWRITE);
	return (0);
}
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
struct ulpt_softc {scalar_t__ sc_fflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ulpt_softc*) ; 
 int FUNC1 (struct usb_fifo*,int) ; 
 struct ulpt_softc* FUNC2 (struct usb_fifo*) ; 

__attribute__((used)) static int
FUNC3(struct usb_fifo *fifo, int fflags)
{
	struct ulpt_softc *sc = FUNC2(fifo);

	/* we assume that open is a serial process */

	if (sc->sc_fflags == 0) {

		/* reset USB parallel port */

		FUNC0(sc);
	}
	return (FUNC1(fifo, fflags));
}
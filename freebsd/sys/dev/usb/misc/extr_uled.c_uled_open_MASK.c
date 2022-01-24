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
struct uled_softc {int sc_state; } ;

/* Variables and functions */
 int EBUSY ; 
 int FREAD ; 
 int ULED_ENABLED ; 
 int FUNC0 (struct uled_softc*) ; 
 struct uled_softc* FUNC1 (struct usb_fifo*) ; 

__attribute__((used)) static int
FUNC2(struct usb_fifo *fifo, int fflags)
{
	if (fflags & FREAD) {
		struct uled_softc *sc;
		int rc;

		sc = FUNC1(fifo);
		if (sc->sc_state & ULED_ENABLED)
			return (EBUSY);
		if ((rc = FUNC0(sc)) != 0)
			return (rc);
	}
	return (0);
}
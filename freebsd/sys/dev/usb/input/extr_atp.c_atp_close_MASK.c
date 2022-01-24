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
struct atp_softc {int sc_fflags; } ;

/* Variables and functions */
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct atp_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_fifo*) ; 
 struct atp_softc* FUNC2 (struct usb_fifo*) ; 

__attribute__((used)) static void
FUNC3(struct usb_fifo *fifo, int fflags)
{
	struct atp_softc *sc = FUNC2(fifo);
	if (fflags & FREAD)
		FUNC1(fifo);

	sc->sc_fflags &= ~(fflags & (FREAD | FWRITE));
	if (sc->sc_fflags == 0) {
		FUNC0(sc);
	}
}
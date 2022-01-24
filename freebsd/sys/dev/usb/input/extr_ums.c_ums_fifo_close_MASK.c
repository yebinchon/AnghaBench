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
struct ums_softc {int sc_fflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC1 (struct usb_fifo*) ; 
 struct ums_softc* FUNC2 (struct usb_fifo*) ; 

__attribute__((used)) static void
FUNC3(struct usb_fifo *fifo, int fflags)
{
	struct ums_softc *sc = FUNC2(fifo);

	FUNC0(2, "\n");

	if (fflags & FREAD)
		FUNC1(fifo);

	sc->sc_fflags &= ~(fflags & (FREAD | FWRITE));
}
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
struct uep_softc {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int FREAD ; 
 int /*<<< orphan*/  UEP_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct usb_fifo*) ; 
 struct uep_softc* FUNC1 (struct usb_fifo*) ; 

__attribute__((used)) static void
FUNC2(struct usb_fifo *fifo, int fflags)
{
	if (fflags & FREAD) {
		struct uep_softc *sc = FUNC1(fifo);

		sc->state &= ~(UEP_ENABLED);
		FUNC0(fifo);
	}
}
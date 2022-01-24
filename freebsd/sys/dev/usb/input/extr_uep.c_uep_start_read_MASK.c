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
typedef  int u_int ;
struct usb_fifo {int dummy; } ;
struct uep_softc {int pollrate; int /*<<< orphan*/ ** xfer; } ;

/* Variables and functions */
 size_t UEP_INTR_DT ; 
 struct uep_softc* FUNC0 (struct usb_fifo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC4(struct usb_fifo *fifo)
{
	struct uep_softc *sc = FUNC0(fifo);
	u_int rate;

	if ((rate = sc->pollrate) > 1000)
		rate = 1000;

	if (rate > 0 && sc->xfer[UEP_INTR_DT] != NULL) {
		FUNC2(sc->xfer[UEP_INTR_DT]);
		FUNC3(sc->xfer[UEP_INTR_DT], 1000 / rate);
		sc->pollrate = 0;
	}

	FUNC1(sc->xfer[UEP_INTR_DT]);
}
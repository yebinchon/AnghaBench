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
struct usb_xfer {int dummy; } ;
struct uath_softc {scalar_t__ sc_tx_timer; } ;
struct uath_data {int /*<<< orphan*/ * ni; int /*<<< orphan*/ * m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uath_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct uath_softc* FUNC2 (struct usb_xfer*) ; 

__attribute__((used)) static void
FUNC3(struct usb_xfer *xfer, struct uath_data *data)
{
	struct uath_softc *sc = FUNC2(xfer);

	FUNC0(sc);

	if (data->m) {
		/* XXX status? */
		FUNC1(data->ni, data->m, 0);
		data->m = NULL;
		data->ni = NULL;
	}
	sc->sc_tx_timer = 0;
}
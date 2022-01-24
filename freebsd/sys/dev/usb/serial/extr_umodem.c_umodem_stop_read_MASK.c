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
struct umodem_softc {int /*<<< orphan*/ * sc_xfer; } ;
struct ucom_softc {struct umodem_softc* sc_parent; } ;

/* Variables and functions */
 size_t UMODEM_BULK_RD ; 
 size_t UMODEM_INTR_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct ucom_softc *ucom)
{
	struct umodem_softc *sc = ucom->sc_parent;

	/* stop interrupt endpoint, if any */
	FUNC0(sc->sc_xfer[UMODEM_INTR_RD]);

	/* stop read endpoint */
	FUNC0(sc->sc_xfer[UMODEM_BULK_RD]);
}
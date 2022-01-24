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
struct ufoma_softc {int /*<<< orphan*/ * sc_bulk_xfer; int /*<<< orphan*/ * sc_ctrl_xfer; scalar_t__ sc_nobulk; } ;
struct ucom_softc {struct ufoma_softc* sc_parent; } ;

/* Variables and functions */
 size_t UFOMA_BULK_ENDPT_READ ; 
 size_t UFOMA_CTRL_ENDPT_INTR ; 
 size_t UFOMA_CTRL_ENDPT_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct ucom_softc *ucom)
{
	struct ufoma_softc *sc = ucom->sc_parent;

	/* start interrupt transfer */
	FUNC0(sc->sc_ctrl_xfer[UFOMA_CTRL_ENDPT_INTR]);

	/* start data transfer */
	if (sc->sc_nobulk) {
		FUNC0(sc->sc_ctrl_xfer[UFOMA_CTRL_ENDPT_READ]);
	} else {
		FUNC0(sc->sc_bulk_xfer[UFOMA_BULK_ENDPT_READ]);
	}
}